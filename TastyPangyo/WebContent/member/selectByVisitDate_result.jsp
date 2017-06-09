<%@ page contentType="text/html;charset=UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
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
			<h1>최종 접속일로 회원 조회</h1><br>
			<form action="/TastyPangyo/memberByVisitDate">
				<input type="date" name="visitDate" required oninvalid="setCustomValidity('날짜를 선택해주세요!')" oninput="setCustomValidity('')">
				<input type="submit" value="찾기">
			</form>
			<p>
			<fmt:setLocale value="ko_KR" />
			<table border="1" align="center">
				<thead>
					<tr>
						<th colspan="2"><%=session.getAttribute("date")%> 이후로 접속하지 않은 회원 리스트</th>
					</tr>
					<tr>
						<th>회원 아이디</th>
						<th>최종 방문일</th>
					</tr>
				</thead>
				<tbody>
					<c:forEach var="member" items="${requestScope.memList}">
					<c:if test="${member.memberId != 'admin' }">
						<tr>
							<td>${member.memberId }</td>
							<td><fmt:formatDate value="${member.visitDate }" pattern="yyyy-MM-dd" /></td>
						</tr>
					</c:if>	
					</c:forEach>
				</tbody>
				<tfoot>
					<tr>
						<td colspan="2">
							<form action="/TastyPangyo/deleteByVisitDate">
								<input type="submit" value="모두 삭제"> 
								<input type="hidden" name="date" value="${sessionScope.date }">
							</form>
						</td>
					</tr>
				</tfoot>
			</table>
		</div>
	</div>


<!---------------------------------------웹페이지 소개 내용 고정 include ---------------------------------------------->
	
<jsp:include page="/footer.jsp"/>
</html>
