<%@ page contentType="text/html; charset=UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<script type="text/javascript" src="/jQuery_class/scripts/jquery-3.2.1.js"></script>
<script type="text/javascript">
$(document).ready(function(){
	
	$("#eachBtn").on("click", function(){
		/*
		$.each() : 배열을 반복 조회 처리하는 메서드 -> Like 향상된 FOR문
			1. 배열을 반복 조회 -> util 메서드
			 - 구문 : $.each(반복할 배열, 함수);
		*/
		var names = ["임기영", "박서준", "하정우", "김종현"];
		/* for(var i=0; i<names.length; i++){
			names[i] //=> 요소 :처리
		} */
		$.each(names, function(idx){
			// 반복 조회되는 배열의 요소(names[i])는 this로 조회한다.s
			// 함수에 매개변수를 선언하면 몇 번째 반복인지를 전달받을 수 있다. (0부터 시작 :index)
			alert(idx+":"+this);
		});
		
		/*
			2. jQuery 셀렉터 함수로 조회된 node List 반복 조회시 사용 -> DOM 처리 메서드.
			 - 구문 : $("셀렉터").each(함수)
		*/
		
		var txt = "";
		$("input").each(function(){
			//txt = txt+this.value;	// this -> Node 객체 (input태그) 
			//txt = txt+"-"+$(this).val();	//조회
			txt = txt+"-"+$(this).val("value 전부 변경!");	//변경
		});
		alert(txt);
	});	// end of on();
	
	
	$("#selBtn").on("click", function(){
		// select에서 몇 번째가 선택되었는지 체크-> 선택된 옵션의 index : select객체.selectedIndex 사용
		alert($("select#hp1").get(0).selectedIndex);	//$("#hp1")[0]	// 조회된 Node List에서 i번째 node객체 조회, 지금은 1개만 잇는 리스트임으로 get(0)
		alert(document.getElementById("hp1").selectedIndex);	// Javascript로
		
		// 선택된 option 값(value)
		alert($("#hp1").val());
	}); // end of on();
	
	
	
	$("input#chkbtn").on("click", function(){
		var checkboxVal = "";
		$("input[name=hobby]:checked").each(function(){
			checkboxVal = checkboxVal+" "+$(this).val();
			// alert(this.value);
			
		});
		alert(checkboxVal);
		
		var count = $("input[name=hobby]:checked").length;	//선택된 개수
		alert(count);
		checkboxVal = "";// 원상복귀
	});	// end of on()
	
	$("#allCheck").on("click", function(){
		// $("셀렉터").prop("속성명", "속성값"); // 태그의 속성을 변경 -> $("#ta").prop("cols", "150");
		// $("셀렉터").prop("속성명"); // 속성값을 조회
		$("input[name=hobby]").prop("checked",this.checked);	// #allCheck의 checked 상태랑 동일하게 바꿔줘야햇 -> this.__
	});
	
});
</script>

<style type="text/css">
form *{
	margin: 5px;
}
</style>
</head>
<body>
<button id="eachBtn">$.each()</button><br>
<form id="form1" name="form1" action=""	 method="post">
이름 : <input type="text" name="name" id="name"><br>
나이 : <input type="text" name="age" id="age"><br>

전화 : 
<select id="hp1">
	<option value="010">공통</option>
	<option>011</option>
	<option>016</option>
	<option>017</option>
	<option>018</option>
	<option>019</option>
</select>
<input type="button" value="선택" id="selBtn">
<br>

취미 : 
<label>영화감상 <input type="checkbox" name="hobby" value="영화감상"></label>
<label>음악감상 <input type="checkbox" name="hobby"  value="음악감상"></label>
<label>독서 <input type="checkbox" name="hobby"  value="독서"></label>
<label>운동 <input type="checkbox" name="hobby"  value="운동"></label>
<label>게임 <input type="checkbox" name="hobby"  value="게임"></label>
<input type="button" value="체크박스조회" id="chkbtn">

<label>모두선택<input type="checkbox" id="allCheck"></label> 
	
<div id="selectedHobby">선택된 체크박스 </div>
<br>
<textarea cols='50' rows='5' id="ta"></textarea>
</form>

</body>
</html>




















































