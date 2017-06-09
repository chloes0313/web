<%@ page contentType="text/html;charset=UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
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
	<!-- 기본페이지(intro.jsp)에서 경로 : /common/menu.jsp -->
<jsp:include page="/manage/menu.jsp"/>

<!---------------------------------------내용 설정-------------------------------------------->
<div id="div_con">
	<div class="content1">
 

<h3>등록이 완료되었습니다!</h3>


식당명 : ${sessionScope.insertRestaurant.restaurantName}<br>
음식종류 : ${sessionScope.insertRestaurant.foodCategory}<br>
위치 : ${sessionScope.insertRestaurant.location}<br>
소개글 : ${sessionScope.insertRestaurant.introduction}<br><br>
사진들 :<br>

<c:forEach items="${sessionScope.result}" var="name">
		<img src="${initParam.rootPath}/up_images/${name}" width="150px">
</c:forEach><br>
<br>
<br>
<a href="/TastyPangyo/selectRes?allRes"><input type="button" value="맛집목록보기"></a>
<br><br>




<!---------------------------------------웹페이지 소개 내용 고정 include ---------------------------------------------->
	
<jsp:include page="/footer.jsp"/>
</html>