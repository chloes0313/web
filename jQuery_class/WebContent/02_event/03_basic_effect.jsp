<%@ page contentType="text/html; charset=UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<script type="text/javascript" src="/jQuery_class/scripts/jquery-3.2.1.js"></script>
<script type="text/javascript">
$(document).ready(function(){
	$("#hideBtn").on("click", function(){
		//$("#image").hide(1000);	// 사라지는데까지 걸리는 시간 - 밀리초
		//$("#image").fadeOut(500);
		$("#image").slideUp();
	});
	$("#showBtn").on("click", function(){
		//$("#image").show(1000);	// 나타나는데까지 걸리는 시간 - 밀리초
		//$("#image").fadeIn(500);
		$("#image").slideDown();
	});
	
	$("#toggleBtn").on("click", function(){
		//$("#image").toggle(500); // 반대상황으로 변화
		//$("#image").fadeToggle(500);
		$("#image").slideToggle();
	});
	
});

</script>
</head>
<body>
<h2>배경사진</h2>
<input type="button" id="hideBtn" value="Image 감추기">
<input type="button" id="showBtn" value="Image 보기">
<input type="button" id="toggleBtn" value="Image 토글"><p>

<img id="image" src="image.jpg" width="300"><!-- src="그림의 url" -->


</body>
</html>