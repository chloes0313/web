<%@ page contentType="text/html; charset=UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<style type="text/css">
div {
	padding: 15px;
}
</style>
<script type="text/javascript" src="/jQuery_class/scripts/jquery-3.2.1.js"></script>
<script type="text/javascript">
/*
 형제노드로 삽입
 after()/insertAfter() : 기준노드 뒤 삽입
 before()/insertBefore() : 기준노드 앞 삽입
 */
 $(document).ready(function(){
	 $("#afterBtn").on("click", function(){
		$("#child4").after("<div style='background-color:lavender'> after()로 추가</div>");
		$("<div style='background-color:lightblue'>insertAfter()로  추가!</div>").insertAfter("#child4");
	 });
	 
	 $("#beforeBtn").on("click", function(){
		$("#child1").before("<div style='background-color:peachpuff'>안뇽 before()로 추가</div>") 
		$("<div style='background-color:cornsilk'>안뇽 insertBefore()로 추가</div>").insertBefore("#child1");
	 });
	 
	 $("#allBtn").on("click", function(){
		$(".child").after("<div style='background-color:aquamarine'>aquamarine ㅋㅋㅋㅋ</div>") 
	 });
 });
</script>

</head>
<body>
<div id="root">
	<div id="child1" class="child" style="background-color: lime;">1번</div>
	<div id="child2" class="child" style="background-color: pink;">2번</div>
	<div id="child3" class="child" style="background-color: skyblue;">3번</div>	
	<div id="child4" class="child" style="background-color: lightgray;">4번</div>
</div>
<hr>
<button id="afterBtn">after버튼</button>
<button id="beforeBtn">before버튼</button>
<button id="allBtn">all 버튼</button>
</body>
</html>