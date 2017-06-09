<%@ page contentType="text/html; charset=UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>

<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
<script type="text/javascript">
function selectorTest(){
	// jQuery Selector 함수 -> DOM Tree에서 특정 노드들을 조회해서 JQuery에 담은 뒤 그 JQuery객체리턴
	// var obj = jQuery('div');	// obj가 jQuery 객체임
	//jQuery 객체에서 스타일 먹일때 -> css
	jQuery("div").css("border", "1px dotted brown");	// jQuery객체.css("css Property","css Value(값)"); Node들에 스타일을 적용.

	$("div ul li").css("color", "blue");	// space: 자손, li->ul의 자손 / ul->div의 자손
	
	//$("a").css("text-decoration", "line-through");
	//$("a[href ^= http]").css("text-decoration", "line-through");
	//$("a[href $= 'co.kr']").css("text-decoration", "line-through");	// 'co.kr': 온점(.)있을 때는 코테이션마크로 감싸자
	//$("a[href *= 'co.kr']").css("text-decoration", "line-through");
	$("a[href $= com]").on("click", function(){
		return confirm("진짜 갈거야?");
	});
	$("a").on("click", function(){
		return confirm("진짜 갈거야?");
	});
	
}
</script>

</head>
<body>
<button onclick="selectorTest();">셀렉터 테스트</button><p>
<div id="title">
	우리커피를 찾아 주셔서 감사합니다.
</div>
<!-- div안에 ul -->
<div>
	커피 메뉴
	<ul>
		<li>아메리카노</li>
		<li>카페라떼</li>
		<li>카푸치노</li>
		<li>카라멜 모카</li>
		<li>카라멜 마키아토</li>
	</ul>
</div>
<br>
<!-- <div>-<b>-<ul> -->
<div>
	<p>
		비 커피 메뉴
	</p>
	<b>
		<ul>
			<li>녹차</li>
			<li>홍차</li>
			<li>우롱차</li>
			<li>국화차</li>		 
		</ul>
	</b>
</div>
<p id="desc">
	tel : 02-111-2222, 주소 : 서울
</p>
<hr>
<p>
<a href="/mainController">우리커피 홈</a>
<a href="http://www.coffeebeankorea.com">커피빈</a>
<a href="http://www.istarbucks.co.kr">스타벅스</a>
<a href="http://www.caffebene.co.kr/">카페베네</a>
</p>
</body>
</html>