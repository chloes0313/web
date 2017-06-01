<%@ page contentType="text/html; charset=UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<script type="text/javascript">
// 함수 선언 및 구현(정의)
// 함수는 웹브라우저가 바로 실행시키는 것이 아니라 등록해놓고 호출 시점에 실행시킨다
// 이벤트 핸들러 스크립트경우 위치 상관 없음..
function hello(){
	alert(100);
	alert(200);
	var name = '성은영';
	alert(name);
}

function hello1(name, age){	//매개변수 선언시 var 붙이지 않음!
	alert(name+": "+age);
	
	
}

var hello3 = function(){
	//구현
	alert("hello3");
}

var sum = function(num1, num2){
	return num1+num2;
}

function caller(){
	var num = worker();
	num();
	//var fun = sum(10,2); //변수 fun : sum()함수가 리턴한 값 대입
	var fun = sum;	// 변수 fun에 변수sum이 가진 값을 대입 -> 변수 sum의 값은 함수
	alert(fun(10,30));
	alert(sum(120,20));
	
}

function worker(){
	alert('worker()');
	return function(){
		alert('리터된함수');
	}
}

</script>

</head>
<body>

<button onclick="hello()">onclick 이벤트핸들러</button>
<button onclick="hello1('성은영','이십팔')">hello1() 함수 호출</button>
<input type="button" onclick="hello1('성은영','28','72');" value="hello1()호출22">	<!-- 매개변수가 더해져서 들어가 있으면 undefined로 자동 설정.. -->
<button onclick="hello3()">hello3() 함수 호출</button>
<button onclick="var s = sum(12, 22); alert(s);">sum() 함수 호출</button>	
<button onclick="caller();">리턴함수 호출</button>
<p> 
<a href="http://www.google.co.kr" onclick="hello();">구글</a>
<a href="javascript:hello()">자바스크립트 코드 호출</a>
</body>
</html>























