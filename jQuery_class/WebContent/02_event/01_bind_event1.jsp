<%@ page contentType="text/html; charset=UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>

<script type="text/javascript" src="/jQuery_class/scripts/jquery-3.2.1.js"></script>
<script type="text/javascript">
// ready : 페이지 로딩시 매개변수로 받은 함수를 실행한다.
$(document).ready(function(){
	// on("이벤트타입", callback함수) - 에벤트 핸들러를 노드(들)에 추가
	$("#chk").on("click", function(){
		if(this.checked){	// event 함수 내에서의 this -> 이벤트 소스, 이벤트가 발생한 객체
			alert('체크 박스 체크');
		}else{
			alert('체크 박스 해제');
		}
		
	});
	
	$("#btn").on("click", function(){
		document.getElementById("chk").checked; // 아이디가 chk인 체크박으객체를 가져옴 -> 쩜부치고 속성 접근
		$("#chk").prop("checked");	//jQuery객체를 가져옴 ->  .prop("속성명") :속성 값 리턴
		if($("#chk").prop("checked")){	// event 함수 내에서의 this -> 이벤트 소스
			alert('체크 박스 체크됐네?');
		}else{
			alert('체크 박스 해제됐네?');
		}
	});
	
	$("a").on("click", function(){
		return confirm('이동하겠니?');
	});
	
	$("li").on("mouseover", function(){
		$(this).css("text-decoration", "underline");	//this:이벤트가 발생한 객체
	}).on("mouseout", function(){
		$(this).css("text-decoration", "none");
	});

	//$("li").hover(function(){}, function(){}); // 앞 함수 : mouseover, 뒤 : mouseout
	
	$("li").on("click", function(){
		alert(this.innerText);
	});
	
});
</script>

<style>
li{
cursor:pointer;
}
</style>
</head>
<body>
메일 수신여부 : <input type="checkbox" name="mailing" value="true" id="chk" checked="checked">
<br>
<input type="button" value="click" id="btn">
<p>
	<a href="http://www.google.com">구글</a> <a href="http://www.daum.net">다음</a>
</p>
<ul>
	<li>우유</li>
	<li>빵</li>
	<li>두유</li>
	<li>쿠키</li>
	<li>탄산음료</li>
</ul>
</body>
</html>