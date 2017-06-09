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
		
		<h1>회원 정보 수정</h1><br>
		<form action="/TastyPangyo/update" method="post">
		
		<table align="center">
		<c:choose>
		<c:when test="${requestScope.miss != null}">
			<font style="color:red">*비밀 번호가 틀렸습니다.</font>
			<tr>
				<td>ID</td>
				<td><input type="text" value="${sessionScope.id }" readonly></td>
			</tr>
			<tr>
				<td>비밀번호</td>
				<td><input type="password" name="repw" placeholder="새 비밀번호를 입력하세요" required oninvalid="setCustomValidity('비밀번호를 입력해주세요!')" oninput="setCustomValidity('')"></td>
			</tr>
			<tr>
				<td>비밀번호</td>
				<td><input type="password" name="repw2" placeholder="비밀 번호가 틀렸습니다!" required oninvalid="setCustomValidity('비밀 번호가 틀렸습니다!')" oninput="setCustomValidity('')"></td>
			
			<tr>
				<td>이름</td>
				<td><input type="text" name="rename" placeholder="${sessionScope.login.memberName }" required oninvalid="setCustomValidity('이름을 입력해주세요!')" oninput="setCustomValidity('')"></td>
				<td><input type="submit" value="변경"></td>
		</c:when>
		<c:otherwise>
			<tr>
				<td>ID</td>
				<td><input type="text" value="${sessionScope.id }" readonly></td>
			</tr>
			<tr>
				<td>비밀번호</td>
				<td><input type="password" name="repw" placeholder="새 비밀번호를 입력하세요" required oninvalid="setCustomValidity('비밀번호를 입력해주세요!')" oninput="setCustomValidity('')"></td>
			</tr>
			<tr>
				<td>비밀번호</td>
				<td><input type="password" name="repw2" placeholder="비밀 번호를 다시 입력해주세요" required oninvalid="setCustomValidity('비밀 번호가 틀렸습니다!')" oninput="setCustomValidity('')"></td>
			
			<tr>
				<td>이름</td>
				<td><input type="text" name="rename" placeholder="${sessionScope.login.memberName }" required oninvalid="setCustomValidity('이름을 입력해주세요!')" oninput="setCustomValidity('')"></td>
				<td><input type="submit" value="변경"></td>
			</tr>
			</c:otherwise>
			</c:choose>
		</table>
	</form>
	</div>
	</div>



<!---------------------------------------웹페이지 소개 내용 고정 include ---------------------------------------------->
	
<jsp:include page="/footer.jsp"/>
</html>