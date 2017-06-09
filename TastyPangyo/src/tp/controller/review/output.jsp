<%@page import="java.util.Date"%>
<%@page import="tp.vo.Member"%>
<%@ page contentType="text/html;charset=UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>

<!-- 세션으로 받은 레스토랑 정보, 로그인 정본로 화면 리스트 뿌려주기 -->
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>

<!------------------------------------------ 스타일 적용 고정 link ------------------------------------------>

<link rel="stylesheet" href="/TastyPangyo/menu.css">

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

<!-- 선택한 리뷰보기  -->
<h3>선택리뷰보기</h3>

<table border="1"  align="center">
	<tr height="12px">
		<th id="review_item" style="width: 100px;"> 식당번호 </th>
		<td style="width: 100px;"> ${ requestScope.review.restaurantId }</td>
		<th id="review_item" style="width: 100px;"> 식당명 </th>
		<td style="width: 100px;"> ${ requestScope.review.restaurantName }</td>
		<th id="review_item" style="width: 100px;"> 별점 </th>
		<td style="width: 200px;"> ${ requestScope.review.kostar }</td>
	</tr>
	<tr height="12px">
		<th id="review_item"> 작성자 </th>
		<td> ${requestScope.review.memberId }</td>
		<th id="review_item"> 작성일 </th>
		<td colspan="3"> <fmt:formatDate value="${ requestScope.review.registeredDate }" pattern="yyyy-MM-dd HH:mm:ss"/></td>
	</tr>
	<tr height="12px">
		<th id="review_item"> 제목 </th>
		<td colspan="5"> ${ requestScope.review.title }</td>
	<tr>
		<th id="review_item" colspan="6"> 내용 </th>
		
	</tr>
	<tr>
		<td colspan="6">
		<textarea name="comments" rows="10" cols="107" readonly style="resize: none">${ requestScope.review.comments }</textarea>
		</td>
	</tr>
</table>
<br>
	<%-- <c:choose>
	<c:when test="${sessionScope.id == 'admin' and requestScope.common == 'false'}">
	<form action="/TastyPangyo/review/select" method="post">
		<button type="submit" name="default" value="registered_date">전체목록보기</button>
	</form> 
	</c:when>
	<c:when test="${ requestScope.common == 'true' }">
	<form action="/TastyPangyo/review/select" method="post">
		<input type="hidden" name="common" value="true">
		<button type="submit" >전체목록보기</button>
	</form> 
	</c:when>
	<c:otherwise>
	<form action="/TastyPangyo/SelectMemberReview" method="post">
		<input type="hidden" name="common" value="true">
		<button type="submit" name="id" value="${ sessionScope.login.memberId }">전체목록보기</button>
	</form> 
	</c:otherwise>
	</c:choose> --%>
	<a href="javascript:history.back()"><button type="button">뒤로가기</button></a>
	<br>
	<br>

	

  
	  </div>
</div>

<!---------------------------------------소개 내용---------------------------------------------->
<div id="div_bottom"><p id="p1">Tasty Pangyo 경기 성남시 분당구 대왕판교로 660  www.kosta.or.kr<br>
										대표이사 서현화	대표전화 02-XXXX-XXXX					</p>
							
						
</div>
</div>

</html>
