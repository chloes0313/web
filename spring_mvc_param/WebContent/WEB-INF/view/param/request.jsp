<%@ page contentType="text/html;charset=UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<h2>REQUEST.JSP</h2>
<!-- 쿠키값 : ${ cookie.requestTime.value}<br> -->
쿠키값 : ${ cookie.request_time.value}<br>
<a href = "/spring_mvc_param/param/getCookie.do">쿠키값 조회</a><br>
<a href="/spring_mvc_param/param/response.do">response요청</a>
<hr>
<a href ="/spring_mvc_param/param/response1.do">응답요청:response1</a><br>
<a href ="/spring_mvc_param/param/response2.do?name=성은영">응답요청:response2</a><br>
<hr>


<h3>요청파라미터 받기</h3>
<form action="/spring_mvc_param/param/search.do" method="post">
<c:if test="${ requestScope.errorMsg != null }">
	<div style="color:red; font-size:2">${ requestScope.errorMsg }</div><br>
</c:if>
검색 키워드 : <input type="text" name="keyword"><br>
<input type="submit" value="SEARCH">
</form>

<hr>
<!-- 로그인 폼 -->
	<c:choose>
		<c:when test="${ sessionScope.loginInfo != null }">
		${ sessionScope.loginInfo }님 접속중......<br>
			<a href="/spring_mvc_param/param/logout.do"><button>LOGOUT</button></a>
			<br>
		</c:when>
		<c:otherwise>

			<form action="/spring_mvc_param/param/login.do" method="post">
				ID : <input type="text" name="id"><br> PASSWORD : <input
					type="password" name="password"><br> <input
					type="submit" value="LOGIN"><br>
			</form>
		</c:otherwise>
	</c:choose>
<hr>

<h4>다양한 타입의 요청파라미터</h4>
<form action="/spring_mvc_param/param/etc.do" method="post">
	이름 : <input type="text" name="name"><br>
	생일 : <input type="date" name="birthday" placeholder="yyyy/MM/dd형식으로 입력하세용"><br>
	취미 : 게임<input type="checkbox" name="hobby" value="game">
		 스포츠<input type="checkbox" name="hobby" value="sports">
		 요리<input type="checkbox" name="hobby" value="cooking">
		 영화감상<input type="checkbox" name="hobby" value="watchingMovies"><br>
	<input type="submit" value="전송">
</form>

</body>
</html>