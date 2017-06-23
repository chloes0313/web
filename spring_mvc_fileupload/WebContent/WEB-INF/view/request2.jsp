<%@ page contentType="text/html;charset=UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<h2>이미지 업로드</h2>
<form action="/spring_mvc_fileupload/uploadImage2.do" method="post" enctype="multipart/form-data">
제목 : <input type="text" name="title"><br>
이미지 : <input type="file" name="upImage"><br>
<input type="file" name="upImage"><br>
<input type="file" name="upImage"><br>
설명 : <textarea name="content" rows="5" cols="50"></textarea><br>
<input type="submit" value="업로드"><br>
</form>

</body>
</html>