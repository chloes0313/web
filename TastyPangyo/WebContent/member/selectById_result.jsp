<%@ page contentType="text/html;charset=UTF-8"%>
<%@ taglib prefix="fmt"  uri="http://java.sun.com/jsp/jstl/fmt"%>

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
			<h1>회원 찾기</h1>
			<p>
			<form action="/TastyPangyo/memberById">
				<input type="text" name="id"> <input type="submit"
					value="검색">
			</form>
			<p>
			<table border="1" align="center">
				<thead>
					<tr>
						<th>회원 아이디</th>
						<th>회원 이름</th>
						<th>최종 방문일</th>
						<th>작성 리뷰</th>
					</tr>
				</thead>
				<tbody>
				
					<tr>
						<td>${requestScope.memberById.memberId }</td>
						<td>${requestScope.memberById.memberName }</td>
						<td><fmt:formatDate value="${requestScope.memberById.visitDate }" pattern="yyyy-MM-dd" /></td>
						<td><a href="/TastyPangyo/SelectMemberReview?id=${requestScope.memberById.memberId }&admin=admin">보기</a></td>
					</tr>
				
				</tbody>
			</table>
		</div>
	</div>

	
<!---------------------------------------웹페이지 소개 내용 고정 include ---------------------------------------------->
	
<jsp:include page="/footer.jsp"/>
</html>
