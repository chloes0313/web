<%@page import="tp.vo.Member"%>
<%@ page contentType="text/html;charset=UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
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
			<h1>전체 회원 보기</h1>
			<table border="1"	  align="center"  valign="middle">
				<thead>
					<tr align="center">
						<th>회원 아이디</th>
						<th>회원 이름</th>
						<th>최종 방문일</th>
						<th>작성 리뷰</th>
					</tr>
				</thead>
				<tbody>
					<c:forEach var="member" items="${requestScope.allmember}">
					<c:if test="${member.memberId != 'admin' }">
						<tr align="center">
							<td>${member.memberId }</td>
							<td>${member.memberName }</td>
							<td><fmt:formatDate value="${member.visitDate }" pattern="yyyy-MM-dd" /></td>
							<td><a href="/TastyPangyo/SelectMemberReview?id=${member.memberId }&admin=admin">보기</a></td>
						</tr>
					</c:if>
					</c:forEach>
				</tbody>
			</table>
		</div>
	</div>


<!---------------------------------------웹페이지 소개 내용 고정 include ---------------------------------------------->
	
<jsp:include page="/footer.jsp"/>
</html>