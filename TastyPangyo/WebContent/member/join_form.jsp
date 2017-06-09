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
	<!-- 기본페이지(intro.jsp, 맛집 조회 메뉴)에서 경로 : /common/menu.jsp -->
<jsp:include page="/common/menu.jsp"/>


	<!---------------------------------------내용 설정-------------------------------------------->
	<div id="div_con">
		<div class="content1">
			<h3>회원가입</h3>
			<form action="/TastyPangyo/join" method="post">
				<table align="center">
					<tr>
						<td>아이디</td>
						<td><input type="text" name="id" placeholder="아이디를 입력하세요"
							required oninvalid="setCustomValidity('아이디를 입력해주세요!')"
							oninput="setCustomValidity('')"></td>
					</tr>
					<tr>
						<td>비밀번호</td>
						<td><input type="password" name="pw"
							placeholder="비밀번호를 입력하세요" required
							oninvalid="setCustomValidity('비밀번호를 입력해주세요!')"
							oninput="setCustomValidity('')"></td>
					</tr>
					<tr>
						<td>이름</td>
						<td><input type="text" name="name" placeholder="이름을 입력하세요"
							required oninvalid="setCustomValidity('이름을 입력해주세요!')"
							oninput="setCustomValidity('')"></td>
					</tr>
				</table>
				<input type="submit" value="가입">
			</form>
		</div>
		<br>
	</div>

<!---------------------------------------웹페이지 소개 내용 고정 include ---------------------------------------------->
	
<jsp:include page="/footer.jsp"/>
</html>