<%@ page contentType="text/html;charset=UTF-8" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title hesre</title>
</head>
<body>
<h2> 여러개의 사진 업로드 폼 (깃허브)</h2>
<!-- 업로드VO를 만들어서 처리 -->
<form action="${ initParam.rootPath }/imageupload" method="post" enctype="multipart/form-data">
	업로더 : <input type="text" name="uploader"><br>
	설명 : <input type="text" name="comment" size="50"><br>
	사진1 : <input type="file" name="image"><br>
	사진2 : <input type="file" name="image"><br>
	사진3 : <input type="file" name="image"><br>
	<input type="submit" value="사진업로드">
</form>

<h2> 1개의 사진 업로드 폼 </h2>
<form action="${ initParam.rootPath }/imageupload" method="post" enctype="multipart/form-data">
	업로더 : <input type="text" name="uploader"><br>
	설명 : <input type="text" name="comment" size="50"><br>
	사진 : <input type="file" name="image"><br>
	<input type="submit" value="UPLOAD">
</form>

<hr>


</body>
</html>
