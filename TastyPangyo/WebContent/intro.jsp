<%@page import="tp.vo.Member"%>
<%@ page contentType="text/html;charset=UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<!------------------------------------------ 스타일 적용 고정 link ------------------------------------------>
<link rel="stylesheet" href="/TastyPangyo/kostar.css">
<link rel="stylesheet" href="/TastyPangyo/menu.css">
<style>
/* top5 구역에 적용되는 스타일 */
.top5{
/* display: inline-block; */
display: inline-block;
width:200px;
height: 280px;
margin: 10px;
padding:10px;
border: 1px solid black;
background-color: #ffffff;
white-space:nowrap; /* 텍스트 길어져도 줄바꿈 안되고 1줄로 표시 */
word-wrap:normal;
text-overflow:ellipsis;	/* 말줄임표(...) */
overflow:hidden;


}

.top5_include{
height: 250px;
white-space:nowrap; /* 텍스트 길어져도 줄바꿈 안되고 1줄로 표시 */
word-wrap:normal;
text-overflow:ellipsis;	/* 말줄임표(...) */
overflow:hidden;
}

.title{
font-size: 20px;
font-weight: bold;
}

.res_link{
 text-align: center;

 }
 
 

</style>
</head>

<!------------------------------------------ 상단 및 메뉴 고정 include ------------------------------------------>
<!-- 마이페이지(/member/myPage.jsp), 관리모드(/member/memberSelect.jsp) 일때 경로 : /manage/menu.jsp -->
<!-- 기본페이지(intro.jsp, 맛집 조회 메뉴)에서 경로 : /common/menu.jsp -->
<jsp:include page="/common/menu.jsp" />


<!---------------------------------------내용 설정-------------------------------------------->
<div id="div_con">
	<div class="content2">
		<h2 style="padding-left: 10px">맛집 TOP 5</h2>

		<c:forEach items="${ applicationScope.hitsTop5 }" end="4"
			var="hitsTop5">
			<div class="top5">
				<div class="top5_include">
					<!-- top 5 히트 조회수 -->
					<span class="title"> ${ hitsTop5.restaurantName }</span><br>
					카테코리: ${ hitsTop5.foodCategory }<br> 위치: ${ hitsTop5.location }<br>
					조회수: ${ hitsTop5.hits }<br> <br>
					<!-- 사진  -->
					<img src="${initParam.rootPath}/up_images/${ hitsTop5.images[0] }"
						width="170px" height="120px"><br> <br>
				</div>
				<div class="res_link">
					<a
						href="/TastyPangyo/selectResById?restaurantId=${hitsTop5.restaurantId }&common=true"
						style="color: #ffffff; background-color: #000000; font-weight: bold; text-decoration: none;">이동하기</a>
				</div>
			</div>
		</c:forEach>
	</div>

	<br>

	<div class="content2">
		<h2 style="padding-left: 10px">별점 TOP 5</h2>
		<c:forEach items="${ applicationScope.kostarTop5 }" end="4"
			var="kostarTop5">
			<div class="top5">
				<div class="top5_include">
					<!-- top 5 별점 조회수 -->
					<span class="title">${ kostarTop5.restaurantName }</span><br>
					카테고리: ${ kostarTop5.foodCategory }<br> 위치 : ${ kostarTop5.location }<br>
					<!-- 별점 -->
					<span class="star-rating"> <span
						style="width: ${kostarTop5.avgKostar*10}%"> </span>
					</span><br> <br>
					<!-- 사진 -->
					<img
						src="${initParam.rootPath}/up_images/${ kostarTop5.images[0] }"
						width="150px"><br> <br>
				</div>
				<div class="res_link">
					<a
						href="/TastyPangyo/selectResById?restaurantId=${kostarTop5.restaurantId }&common=true"
						style="color: #ffffff; background-color: #000000; font-weight: bold; text-decoration: none;">이동하기</a>
				</div>
			</div>
		</c:forEach>
	</div>
</div>





<!---------------------------------------웹페이지 소개 내용 고정 include ---------------------------------------------->

<jsp:include page="/footer.jsp" />
</html>