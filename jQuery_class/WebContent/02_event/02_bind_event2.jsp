<%@ page contentType="text/html; charset=UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<script type="text/javascript" src="/jQuery_class/scripts/jquery-3.2.1.js"></script>
<script type="text/javascript">
$(document).ready(function(){
	/*
	// on() 실행시점에 있던 chkbox에만 이벤트 핸들러 적용, 동적으로 추가된것에는 X
	// 구문 : $("이벤트소스-selector").on("이벤트타입", 함수);
	$(":checkbox").on("click", function(){	
		alert("체크박스 클릭");
	});	//모든 엘리먼트의 타입이 checkbox
	 */
	 
	// on()이 실행 이후에 생성된 노드들에도 event handler를 추가 (실행시점에도 그후에도 모두 적용)
	// 구문 : $(이벤트소스의 부모노드-selector).on("이벤트타입", "이벤트소스-selector", callback함수);
	$("#chk_layer").on("click", ":checkbox", function(){
		 alert("쳌밗 CLICK!");
	 });
	 
	
	$("#btn").on("click", function(){
		/* 
		//javascript
		var input = document.createElement("input");	//<input></input>
		input.setAttribute("type", "checkbox");		//<input type="checkbox">
		
		var layer = document.getElementById("chk_layer");
		layer.appendChild(input);	
		// <div id="chk_layer">
		// 	 <input type="checkbox">
		// </div>
		*/
		$("<input type='checkbox'>").appendTo("#chk_layer");
	});
	
	
});


</script>

<style type="text/css">
div{
	width: 100%;/*너비설정 - 화면의 너비를 100% 차지하도록 설정*/
	height: auto;/*높이설정 - 들어가 있는 내용물의 높이에 맞게 자동 설정되도록 설정*/
	border: 1px solid gray;/*경계선 (두께 모양 색) 설정*/
	
}
</style>
</head>
<body>
체크박스 : <input type="checkbox" value="1번 체크박스" name="chk">
<input type="button" value="체크박스 생성" id="btn">
<p>
<div id="chk_layer">
<input type='checkbox'>
</div>


</body>
</html>