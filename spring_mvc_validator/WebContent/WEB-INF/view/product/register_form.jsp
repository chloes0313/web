<%@page import="org.apache.jasper.tagplugins.jstl.core.Param"%>
<%@ page contentType="text/html;charset=utf-8" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<style type="text/css">


span, td, th{
	padding: 5px; 
}
span.error{
	font-size:small;
	color: red;
}

</style>
</head>
<body>
<h2>상품등록</h2>
<%-- 
	<form:errors> :  Errors/BindingResult에 담긴 에러 메시지를 출력해주는 태그
			-출력 메시지 : rejectValue(....)에 등록된 에러 메시지
			-태그 속성
				1) path: 에러메시지와 관련된 property명 -@ModelAttribute객체의 속성명.property명
				2) delimiter : path의 property와 관련된 에러메시지가 여러개일 경우 사용할 구분자 지정 (생략시<br>)
 --%>

<form action="/spring_mvc_validator/product/register.do" method="post">
<table>
	<tr>
		<th>제품ID</th>
		<td><input type="text" name="id" value="${ param.id }">
		<span class="error"><form:errors path="product.id" delimiter="&nbsp;"/></span>
		</td>
		
	</tr>
	<tr>
		<th>제품명</th>
		<td><input type="text" name="name" value="${ param.name }"><span class="error">
		<form:errors path="product.name"/></span></td>
	</tr>
	<tr>
		<th>제조사명</th>
		<td><input type="text" name="companyName" value="${ param.companyName }"><span class="error">
		<form:errors path="product.companyName"/></span></td>
	</tr>
	<tr>
		<th>가격</th>
		<td><input type="text" name="price" value="${ param.price }"><span class="error">
		<form:errors path="product.price" delimiter="&nbsp"/></span></td>
	</tr>
	<tr>
		<th>제조일자</th>
		<td><input type="date" name="dateOfProduction" value="${ param.birthday }"><span class="error"></span></td>
	</tr>
	<tr>
		<th>선택옵션</th>
		<td>
		<c:forEach items="${ paramValues.option }" var="option">
		<c:choose>
			<%-- <c:when test="${ option == " }"> --%>
			<label>옵션1 : <input type="checkbox" name="option" value="opt1" ${ paramValues.option[0] == 'opt1' or paramValues.option[1] == 'opt1' or paramValues.option[2] == 'opt1' or paramValues.option[3] == 'opt1' ? 'checked':'' }></label>
		
			<label>옵션2 : <input type="checkbox" name="option" value="opt2" ${ paramValues.option[0] == 'opt2' or paramValues.option[1] == 'opt2' or paramValues.option[2] == 'opt2' or paramValues.option[3] == 'opt2' ? 'checked':'' }></label>
			<label>옵션3 : <input type="checkbox" name="option" value="opt3" ${ paramValues.option[0] == 'opt3' or paramValues.option[1] == 'opt3' or paramValues.option[2] == 'opt3' or paramValues.option[3] == 'opt3' ? 'checked':'' }></label>
			<label>옵션4 : <input type="checkbox" name="option" value="opt4" ${ paramValues.option[0] == 'opt4' or paramValues.option[1] == 'opt4' or paramValues.option[2] == 'opt4' or paramValues.option[3] == 'opt4' ? 'checked':''} ></label>
		</c:choose>
		</c:forEach>
			<span class="error"><br>
			<form:errors path="product.option"/></span></td>
			
	</tr>
	<tr>
		<td colspan="2">
			<input type="submit" value="등록하기">
		</td>
	</tr>
</table>
</form>
</body>
</html>