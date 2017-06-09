<%@page import="java.util.Date"%>
<%@page import="tp.vo.Member"%>
<%@ page contentType="text/html;charset=UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>



<!--------------------------------- BODY 대신 DIV 사용------------------------------------------>
<div id="div_root"> 


<!----------------------------------그림있는 상단 설정------------------------------------------->
<div id="div_top"><h1><script language="JavaScript" src="neon.js"></script></h1></div>


<!-------------------------------------메뉴바 설정----------------------------------------------->
<div id="div_menu">
<ul id="nav">
	<li><a href="/TastyPangyo/intro"> 처음으로 </a></li>
   <li><a href="/TastyPangyo/selectRes?allRes=allRes&common=true"> 전체맛집조회 </a></li>
	<li><a href="/TastyPangyo/restaurant/user_selectByLocation.jsp?common=true"> 건물로조회</a></li>
	<li><a href="/TastyPangyo/restaurant/user_selectByName_form.jsp?common=true"> 이름으로조회 </a></li>  
	<li><a href="/TastyPangyo/restaurant/user_selectByCategory_form.jsp?common=true"> 카테고리로조회</a></li>
	<c:if test="${empty sessionScope.id }">
	<li><a href="/TastyPangyo/member/join_form.jsp">회원가입</a></li>
	</c:if>
	<li><form action="/TastyPangyo/login" method="post">
<div style="font-weight: bold;">
<c:choose>
	<c:when test="${empty sessionScope.login }">
		ID  <input type="text" name="id" placeholder="id를 입력하세요">
		
		PW  <input type="password" name="pw" placeholder="비밀번호를 입력하세요">
		<input type="submit" value="확인"><br>
		&nbsp; &nbsp; &nbsp; <font style="color:red; font-weight:bold;">${ requestScope.fail }</font>
	</c:when>

	
	<c:otherwise>
			<font style="font-size: 20px"><%= session.getAttribute("id") %>님 환영합니다.</font><br>
		<ul>	
			<li><a href="/TastyPangyo/logout">로그아웃</a></li>
			<c:if test="${sessionScope.login.memberId != 'admin'}">
				<li><a href="/TastyPangyo/member/myPage.jsp">마이페이지</a></li>
			</c:if>
			<c:if test="${sessionScope.login.memberId == 'admin' }">
         		<li><a href="/TastyPangyo/member/memberSelect.jsp">관리모드</a></li>
         	</c:if>
      	</ul> 	
	</c:otherwise>
</c:choose>
</div>
</form>
	</li>            
</ul>	
</div><br><br><br><br>