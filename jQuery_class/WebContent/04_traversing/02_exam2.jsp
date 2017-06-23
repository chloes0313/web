<%@ page contentType="text/html; charset=UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>

<style type="text/css">
.desc, #tb tbody{
	cursor: pointer;
}
table{
	width: 400px;
}
td, th{
	padding: 5px;
}
</style>
<script type="text/javascript" src="/jQuery_class/scripts/jquery-3.2.1.js"></script>
<script type="text/javascript">
$(document).ready(function(){
	//	<div>들									자손 중 <a> 태그 요소
	//$("div").css("background-color", "yellow").find("a").css("text-decoration","none");
	
	//	<div>들									자식 중 <a> 태그 요소
	$("div").css("background-color", "yellow").children("a").css("text-decoration","none");

	// class=desc인 span에 click 이벤트 핸들러 추가
	$("span.desc").on("click", function(){
		//$(this).next().text("<-선택됨 : "+$(this).text());
		var txt = $(this).text();
		
		$("span.desc").next().text("");
		$(this).next().text("<-선택됨 : "+txt);
	});
	
	/*
	#tbody의 행을 클릭하면 클릭된 행의 배경색을 변경(기존색 원상복귀)
	그행의 글번호를 alert로 띄우기
	*/
	$("#tbody>tr").on("click", function(){
		/* $("#tbody>tr").css("background", "white");
		var no = $(this).css("background","red").children().first().text();
		alert("글번호 : "+no); */
		$("#tbody>tr").css({"background":"white", "color":"black"})
		alert($(this).css({"background":"black","color":"white"}).children(":first-child").text());
		// 여러 style 적용 : {"속성":"값", "속성":"값",...})
	});
	
});

</script>	
</head>
<body>
<div id="cafe">
카페:
	<p>
		<span>커피프랜차이즈</span> 
		<a href="#">스타벅스</a>
		<a href="#">커피빈</a>
		<a href="#">커피베네</a>
		<a href="#">java카페</a>
	</p>	
</div>
<br>
<div>
	포탈 : w
	<a href="#">구글</a>
	<a href="#">다음</a>
	<a href="#">네이트</a>
	<a href="#">네이버</a>
</div>
<hr/>
<p id="descLayer">
	<span class="desc">설명 1</span><span></span><br>
	<span class="desc">설명 2</span><span></span><br>
	<span class="desc">설명 3</span><span></span><br>
	<span class="desc">설명 4</span><span></span><br>
</p>
<hr>

<table border='1' id="tb">
	<thead>
		<tr>
			<td>NO</td>
			<td>제목</td>
			<td>작성자</td>
			<td>조회수</td>
		</tr>
	</thead>
	<tbody id="tbody">	
		<tr>
			<td>1</td>
			<td>1번글입니다.</td>
			<td>이영수</td>
			<td>20</td>
		</tr>
		<tr>
			<td>2</td>
			<td>2번글입니다.</td>
			<td>김유진</td>
			<td>50</td>
		</tr>
		<tr>
			<td>3</td>
			<td>3번글입니다</td>
			<td>정명길</td>
			<td>70</td>
		</tr>
		<tr>
			<td>4</td>
			<td>4번글입니다.</td>
			<td>유연주</td>
			<td>30</td>
		</tr>
		<tr>
			<td>5</td>
			<td>5번글입니다.</td>
			<td>오지영</td>
			<td>20</td>
		</tr>
	</tbody>
</table>
<hr>

</body>
</html>


