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

<link rel="stylesheet" href="/TastyPangyo/menu.css">

</head>
<!------------------------------------------ 상단 및 메뉴 고정 include ------------------------------------------>
	<!-- 마이페이지(/member/myPage.jsp), 관리모드(/member/memberSelect.jsp) 일때 경로 : /manage/menu.jsp -->
	<!-- 기본페이지(intro.jsp)에서 경로 : /common/menu.jsp -->
<jsp:include page="/manage/menu.jsp"/>


	<!---------------------------------------내용 설정-------------------------------------------->
	<div id="div_con">
		<div class="content1">
		
		<h1>비밀번호가 일치하지 않습니다. 다시 한번 입력해주세요.</h1><br>
		<form action="/TastyPangyo/delete" method="post">
			<input type="password" name= "pw" placeholder="탈퇴하지마세요ㅠㅠ" required oninvalid="setCustomValidity('비밀번호를 입력해주세요!')" oninput="setCustomValidity('')">
			<input type="hidden"  name="id" value="${sessionScope.id }">
			<input type="submit" value="확인" >
		</form>

	</div>
	</div>


	<!---------------------------------------웹페이지 소개 내용 고정 include ---------------------------------------------->
	
<jsp:include page="/footer.jsp"/>
</html>
