<%@ page contentType="text/html;charset=UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>

<h2>업로드 된 정보</h2>
제목 : ${ requestScope.board.title }<br>
설명 : ${ requestScope.board.content }<br>
이미지<br>
<c:forEach items="${ requestScope.imageNames }" var="image">

<img src="/spring_mvc_fileupload/up_image/${ image }" width="300px"> &nbsp;

</c:forEach>


</body>
</html>