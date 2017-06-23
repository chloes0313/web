<%@ page contentType="text/html;charset=UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<jsp:include page="/WEB-INF/view/menu.jsp"/>
<form action="${initParam.rootPath }/images/register.do" enctype="multipart/form-data" method="post">
	<input type="file" name="upImage"><br>
	<textarea rows="5" cols="50" name="description"></textarea><br>
	<input type="submit" value="등록">
</form>
</body>
</html>