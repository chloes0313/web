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
제품명ID : ${ requestScope.product.id }<br>
제품명 : ${ requestScope.product.name }<br>
제조사명 : ${ requestScope.product.companyName }<br>
가격 : ${ requestScope.product.price }세<br>
제조일자 : 
<fmt:formatDate value="${ requestScope.product.dateOfProduction }"  pattern="yyyy년MM월dd일"/><br>

선택사항<br>
	<ul>
		<c:forEach items="${ requestScope.product.option }" var="interest">
			<li>${ interest }</li>
		</c:forEach>
	</ul>
</body>
</html>