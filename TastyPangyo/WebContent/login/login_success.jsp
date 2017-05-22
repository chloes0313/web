<%@page import="tp.vo.Member"%>
<%@ page contentType="text/html;charset=UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<!-- JSP에서 HttpServletResquest 객체를 사용 -> -->



<h2>안녕하세요, <span style="color:orange"><%=((Member)session.getAttribute("login")).getMemberName() %></span>님!</h2>
<!-- HttpSession 객체 사용 : session.메서드  -> 선언 안되어있어도 사용할 수 있는 내장 객체임 -->

<%-- Your password is <%=request.getAttribute("password") %>. --%>


<p>
<a href="/session_web/index.jsp"><input type="button" value="MAIN PAGE"></a>
<!-- 로그아웃 -->
<a href="/session_web/logout"><input type="submit" value="LOGOUT"></a>
</p>


</body>
</html>