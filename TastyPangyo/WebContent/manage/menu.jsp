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
<c:choose>
<c:when test="${sessionScope.id == 'admin' }">

   <li><a href="/TastyPangyo/intro"> 처음으로 </a></li>
   
   <li><a>회원 관리</a>
     <ul>
     <li><a href="/TastyPangyo/allmember">전체 회원 보기</a></li>
   <li><a href="/TastyPangyo/count">총회원수</a></li>
   <li><a href="/TastyPangyo/member/selectById.jsp">회원 찾기</a></li>
   <li><a href="/TastyPangyo/member/selectByVisitDate.jsp">장기 미접속자</a></li>
   </ul>
  </li>
  
  <li><a>맛집 관리</a>
  <ul>
   <li><a href="/TastyPangyo/restaurant/regist_restaurant_form.jsp">맛집 등록</a></li>
   <li><a href="/TastyPangyo/selectRes?allRes">전체조회</a></li>
   <li><a href="/TastyPangyo/restaurant/manager_Nameselect.jsp">이름으로조회</a></li>
   <li><a href="/TastyPangyo/restaurant/manager_Locationselect.jsp">위치로조회</a></li>
   <li><a href="/TastyPangyo/restaurant/manager_Categoryselect.jsp">카테고리조회</a></li>
   </ul>
  </li>

 
 <li><a>리뷰 관리</a>
     <ul>
        <li><a href="/TastyPangyo/review/select?req=allReviews">전체리뷰</a></li>
        <li><a href="/TastyPangyo/review/select?req=title">제목으로찾기</a></li>
        <li><a href="/TastyPangyo/review/select?req=comments">내용으로찾기</a></li>
        <li><a href="/TastyPangyo/review/select?req=memberId">작성자로찾기</a></li>
        <li><a href="/TastyPangyo/review/select?req=registeredDate">작성일로찾기</a></li>
     </ul>          
  </li>
  </c:when>
  <c:otherwise>
  	<li><a href="/TastyPangyo/intro"> 처음으로 </a></li>
			<li><a href="/TastyPangyo/member/update.jsp">정보 수정</a></li>
			<li><a href="/TastyPangyo/SelectMemberReview?id=${sessionScope.id }">리뷰 보기 </a></li>
			<li><a href="/TastyPangyo/member/delete.jsp">회원 탈퇴</a></li>
			<c:if test="${sessionScope.id == 'admin' }">
				<li><a href="/TastyPangyo/member/memberSelect.jsp">관리 모드</a></li>
			</c:if>
  
  </c:otherwise>
  </c:choose>
 </ul>   


</div><br><br>