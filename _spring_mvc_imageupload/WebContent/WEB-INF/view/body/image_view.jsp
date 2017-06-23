<%@ page contentType="text/html;charset=UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<jsp:include page="/WEB-INF/view/menu.jsp"/>
설명 : ${requestScope.image.description }<p>
<img width="640px" alt="${requestScope.image.originalName }" src="${initParam.rootPath }/uploadImages/${requestScope.image.saveName}">
</body>
</html>