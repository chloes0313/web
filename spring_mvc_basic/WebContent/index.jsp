<%@ page contentType="text/html;charset=UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>

<h1>index.jsp</h1>
<a href="/spring_mvc_basic/greeting/hello.do">hello 호출</a><br>
<a href="/spring_mvc_basic/greeting/greeting1.do">greeting1 호출</a><br>
<a href="/spring_mvc_basic/greeting/greeting2.do?name=성은영">greeting2 호출</a><br>
<a href="/spring_mvc_basic/greeting/greeting3.do?name=성은영&age=28">greeting3 호출</a><br>
<a href="/spring_mvc_basic/greeting/greeting4.do">View가 직접응답</a>


<hr>
<!-- 인코딩 처리해서 보내주는 방법 (페이지에서 소스보기 하면 확인가능) -->
<a href="<c:url value='/greeting/hello.do'/>">hello 호출</a><br>
<a href="<c:url value='/greeting/greeting2.do'><c:param name='name' value='메롱메롱메롱'/></c:url>">greeting2 호출</a><br>


</body>
</html>