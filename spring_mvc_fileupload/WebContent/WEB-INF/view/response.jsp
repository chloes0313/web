<%@ page contentType="text/html;charset=UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<h2>업로드 된 정보</h2>
제목 : ${ requestScope.title }<br>
설명 : ${ requestScope.content }<br>
이미지<br>
<img src="/spring_mvc_fileupload/up_image/${ requestScope.fileName }"><br>
</body>
</html>