<%@page import="tp.vo.Member"%>
<%@ page contentType="text/html;charset=UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<!------------------------------------------ 스타일 적용 고정 link ------------------------------------------>

<link rel="stylesheet" href="/TastyPangyo/menu.css">
<link rel="stylesheet" href="/TastyPangyo/kostar.css">
</head>

<!------------------------------------------ 상단 및 메뉴 고정 include ------------------------------------------>
	<!-- 마이페이지(/member/myPage.jsp), 관리모드(/member/memberSelect.jsp) 일때 경로 : /manage/menu.jsp -->
	<!-- 기본페이지(intro.jsp, 맛집 조회 메뉴)에서 경로 : /common/menu.jsp -->
<c:choose>
	<c:when test="${ requestScope.common != null }">
	<jsp:include page="/common/menu.jsp"/>
	</c:when>
	<c:otherwise>
	<jsp:include page="/manage/menu.jsp"/>
	</c:otherwise>
</c:choose>

	<!---------------------------------------내용 설정-------------------------------------------->
	<div id="div_con">
		<div class="content1">
			<h1>전체맛집보기</h1>
			<table border="1" style="table-layout:fixed; text-align: center" align="center">
				<thead>
					<tr>
						<th width="200px">식당명</th>
						<th width="100px">음식종류</th>
						<th width="150px">위치</th>
						<th width="200px">음식점 번호</th>
						<th width="150px ">별점</th>
						<th width="100px">조회수</th>
					</tr>
				</thead>
				<tbody>

					<c:forEach items="${ sessionScope.resList }" var="res">
						<tr>
							<td><a href="/TastyPangyo/selectResById?restaurantId=${ res.restaurantId }&common=yes">${res.restaurantName}</a></td>
							<td>${res.foodCategory}</td>
							<td>${res.location}</td>
							<td>${res.restaurantTelNum}</td>
							<td width="150px"  style="text-align: left">
							<!-- 별점 -->
							<span class="star-rating">
								<span style="width: ${res.avgKostar*10}%">
								</span>
							</span>
							</td>
							<td>${res.hits}</td>
						</tr>
					</c:forEach>
				</tbody>

			</table>
		<br><br><br><br>


		</div>
	</div>



<!---------------------------------------웹페이지 소개 내용 고정 include ---------------------------------------------->
	
<jsp:include page="/footer.jsp"/>
</html>