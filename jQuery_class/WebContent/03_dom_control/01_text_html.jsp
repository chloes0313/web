<%@ page contentType="text/html; charset=UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<style type="text/css">
div{
	border: 1px solid gray;
	margin-top: 5px;
	padding: 5px;
}
</style>
<script type="text/javascript" src="/jQuery_class/scripts/jquery-3.2.1.js"></script>
<script type="text/javascript">
$(document).ready(function(){
	$("input#showBtn").on("click", function(){
		var text = $("div#dataLayer").text();	// 선택된 노드 안의 Text 노드만 조회
		var html = $("div#dataLayer").html();	// 선택된 노드 안의 모든 하위 노드들 문자열로 조회
		
		alert(text);
		alert(html);
	});
	
	$("input#txtBtn").on("click", function(){
		$("#showLayer").text("<b>진하게 나옵니다. strong태그를 써도 됨</b>");
		$("div").text("<b>진하게 나옵니다. strong태그를 써도 됨</b>");
	});
	
	$("input#htmlBtn").on("click", function(){
		$("#showLayer").html("<b>진하게 나옵니다. strong태그를 써도 됨</b>");
		$("div").html("<b>진하게 나옵니다. strong태그를 써도 됨</b>");
	});
});


</script>
</head>
<body>
<div id="dataLayer">
	<i><b>안녕하세요</b></i>
	<b>반갑습니다.</b>
</div>
<p>
<div id="showLayer">a</div>
<input type="button" value="조회버튼" id="showBtn">
<input type="button" value="text입력" id="txtBtn">
<input type="button" value="html입력" id="htmlBtn">
</body>
</html>








