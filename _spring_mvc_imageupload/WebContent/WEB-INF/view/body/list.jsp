<%@ page contentType="text/html;charset=utf-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<jsp:include page="/WEB-INF/view/menu.jsp"/>
<table>
	<thead>
		<tr>
			<th>NO</th>
			<th>파일명</th>
		</tr>
	</thead>
	<tbody>
		<c:forEach items="${requestScope.list }" var="image">
			<tr>
				<td>${image.no}</td>
				<td>
					<a href="${initParam.rootPath }/images/findByNo.do?no=${image.no}">
						${image.originalName }
					</a>
				</td>
			</tr>
		</c:forEach>
	</tbody>
</table>

</body>
</html>