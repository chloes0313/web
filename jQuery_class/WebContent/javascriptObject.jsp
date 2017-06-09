<%@ page contentType="text/html;charset=UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<!-- jQuery Library 추가 -->
<script type="text/javascript" src="/jQuery_class/scripts/jquery-3.2.1.js"></script>
<script type="text/javascript">
/*
	Javacsript 객체 생성 - 클래스 없이 생성하기!
 	 - {속성명:속성값, 속성명:속성값, ...} =>	속성명-따옴표로 감싸도 안 감싸도 된다.
 	 								 	특수문자를 속성명으로 사용할 때는 반드시 감싸야 함
 	 								 	e.g. age:20, "age":20, 'age':20, "name":"김떙땡"
 	 - 값 :	문자열 (큰 따옴표/작은 따옴표로 감싼다)
 	 		숫자 (정수, 실수)
 	 		논리(true, false)
 	 		null
 	 		배열 (대괄호- [값, 값, 값, ...])
 	 		객체 ( { member:{"name":"성은영", "age":20} } )
 	 		함수 (함수가 객체의 속성 값이 되면 메서드라고 부른다)
 */
 var car = {	/*전역변수로 객체 만들기*/
	"name":"말리부",		//String
	"maker":"쉐보레",		//String
	"price":30000000,	//숫자 : 정수
	"gasoline": true,	//논리
	"option": ["썬루프", "내장네비게이션", "후방카메라"],	//배열
	"go":function(){	//함수 -> 메서드
		alert(this.name+"(이)가 출발합니다.");	//메서드에서 속서에 접근 : this.속성명 // this는 메서드의 소유 객체이다
	}
 }
	
 $(document).ready(function(){
	$("button#btn1").on("click", function(){
		// 객체의 속성에 접근 : 객체.속성명, 객체["속성명"]	** 특수기호가 들어있다면 대괄호 표기법을 이용한다
		alert(car.name);
		car.go();
		car["go"]();
		
		// 반복문 : for in -> 객체의 속성명을 반복조회
		var attrList = [];	
		for(var attr in car){	// 한번 반복할 때마다 car 객체의 속성명을 attr에 넣기
			attrList.push(attr);
			if(typeof car[attr]!= "function"){
				alert(car[attr]);
			}
		}
		alert(attrList.join(", "));
	}); //end of btn1
	
	$("#btn2").on("click", function(){
		var json = "{'name':'성은영', 'age':20}";	// json의 타입 : String 
		//alert(json.name);	//undifined
		alert(json);
		
		//json 문자열 -> Javascript 객체로 변환 : window.eval();
		var obj = window.eval("("+ json +")");
		alert(obj);
		alert(obj.name);
	});	// end of btn2
	
 });
	

 	 
</script>
</head>
<body>

<button id="btn1">버튼 첫 번째</button>
<button id="btn2">버튼 두 번째</button>

</body>
</html>