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
<h2>가입폼</h2>
<%-- 
	<form:errors> :  Errors/BindingResult에 담긴 에러 메시지를 출력해주는 태그
			-출력 메시지 : rejectValue(....)에 등록된 에러 메시지
			-태그 속성
				1) path: 에러메시지와 관련된 property명 -@ModelAttribute객체의 속성명.property명
				2) delimiter : path의 property와 관련된 에러메시지가 여러개일 경우 사용할 구분자 지정 (생략시<br>)
 --%>

<form action="/spring_mvc_modelAttribute/member/register.do" method="post">
<table>
	<tr>
		<th>ID</th>
		<td><input type="text" name="id" value="${ param.id }">
		<span class="error"><form:errors path="member.id" delimiter="&nbsp;"/></span>
		</td>
		
	</tr>
	<tr>
		<th>패스워드</th>
		<td><input type="password" name="password"><span class="error">
		<form:errors path="member.password"/></span>

		</td>
	</tr>
	<tr>
		<th>이름</th>
		<td><input type="text" name="name" value="${ param.name }"><span class="error">
		<form:errors path="member.name"/></span></td>
	</tr>
	<tr>
		<th>이메일주소</th>
		<td><input type="text" name="email" value="${ param.email }"><span class="error">
		<form:errors path="member.email"/></span></td>
	</tr>
	<tr>
		<th>나이</th>
		<td><input type="text" name="age" value="${ param.age }"><span class="error">
		<form:errors path="member.age"/></span></td>
	</tr>
	<tr>
		<th>생일</th>
		<td><input type="date" name="birthday" value="${ param.birthday }"><span class="error"></span></td>
	</tr>
	<tr>
		<th>블러그 주소</th>
		<td><input type="text" name="blogUrl" value="${ param.blogUrl }"><span class="error"></span></td>
	</tr>
	<tr>
		<th>관심사항</th>
		<td>

			<label>게임 : <input type="checkbox" name="interest" value="game"></label>
			<label>영화 : <input type="checkbox" name="interest" value="movie"></label>
			<label>음악 : <input type="checkbox" name="interest" value="music" ></label>
			<label>스포츠 : <input type="checkbox" name="interest" value="sports" ></label>
			<span class="error">
			<form:errors path="member.interest"/></span></td>
	</tr>
	<tr>
		<td colspan="2">
			<input type="submit" value="가입">
		</td>
	</tr>
</table>
</form>
</body>
</html>