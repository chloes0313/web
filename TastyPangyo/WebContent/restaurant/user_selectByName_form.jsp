<%@page import="tp.vo.Member"%>
<%@ page contentType="text/html;charset=UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
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
	<% request.setAttribute("common", request.getParameter("common") ); %>

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
      <h3> 맛집 이름으로 조회</h3>
	<form action="/TastyPangyo/selectRes" method="post">
	 <input type = "text" name="resName">
	 <input type="hidden" name="common" value="true">
					<input type = "submit" value="조회하기">
	</form>

	  </div><br>
	
</div>

<!---------------------------------------웹페이지 소개 내용 고정 include ---------------------------------------------->
	
<jsp:include page="/footer.jsp"/>
</html>

