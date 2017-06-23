<%@ page contentType="text/html;charset=UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<h2>Response.jsp</h2>
response.do로부터의 응답 : ${ requestScope.result }<br>
- 1 : ${ requestScope.r1 }<br>
- 2 : ${ requestScope.r2 }<br>
- 3 : ${ requestScope.r3 }<br>
<hr>
<a href="/spring_mvc_param/index.jsp">index.jsp</a><br>
<hr>
<h4>로그인 정보</h4>
${ sessionScope.loginInfo }님이 로그인 하셨습니다.<br>

<hr>
<h4>다양한 타입의 요청파라미터 응답</h4>
이름 : ${ requestScope.name }<br>
생일 : ${ requestScope.birthday }<br>
취미 :
<c:forEach items="${ requestScope.hobbies }" var="hobby" >
	${ hobby } 
</c:forEach>
<br>


</body>
</html>