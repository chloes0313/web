<%@ page contentType="text/html;charset=UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Login Page</title>
</head>
<body>
<form action="/session_web/login" method="post">
<h3>Who Are U?</h3>
<!-- msg가 null이 아닐때만 나타나게 : 조건문 -->

<% if(request.getAttribute("msg")!=null){%>
<!-- 문단 나누기 : p/div/span -->
<!-- span : 한 줄/ p : 문장 사이 한 줄 삽입 / div : 문장 사이 라인 구분 -->
	<span style="color:red"><%=request.getAttribute("msg") %></span><br>
<% } // end of if %>
ID			<input type="text" name="id"><br>
PASSWORD	<input type="password" name="password" maxlength="15"><br>
<input type="submit" value="LOGIN">
<input type="reset" value="RESET">

</form>

</body>
</html>