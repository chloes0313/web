<%@ page contentType="text/html;charset=UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<h2>REGISTER SUCCESS!</h2>
ID : ${ requestScope.member.id }<br>
이름 : ${ requestScope.member.name }<br>
이메일 : ${ requestScope.member.email }<br>
나이 : ${ requestScope.member.age }세<br>
생일 : 
<fmt:formatDate value="${ requestScope.member.birthday }"  pattern="yyyy년MM월dd일"/><br>

블로그URL : ${ requestScope.member.blogUrl }<br>
관심사항<br>
	<ul>
		<c:forEach items="${ requestScope.member.interest }" var="interest">
			<li>${ interest }</li>
		</c:forEach>
	</ul>
</body>
</html>