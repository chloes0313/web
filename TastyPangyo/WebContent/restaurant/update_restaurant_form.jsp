<%@ page contentType="text/html;charset=UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link rel="stylesheet" href="/TastyPangyo/menu.css">
</head>
<jsp:include page="/manage/menu.jsp"/>

	<div id="div_con">
		<div class="content1">
	<form action="/TastyPangyo/updateRes" method="post" enctype="multipart/form-data">
		
		맛집 ID : <input type = "text" name="resId" value = "${param.PK}" readonly><br><br>
		
		맛집 이름 : <input type = "text" name="resName" required="required" value = "${param.resName}"><br><br>
		
		전화번호 : <input type="text" name="resTelNum" required="required" value ="${param.resTelNum}"><br><br>
		
		

     기존 맛집 위치 : ${ param.location }<br>
      맛집 위치 재선택 :<br> 삼환하이펙스A<input type = "radio" name="location" value="삼환하이펙스A" checked><br>
               삼환하이펙스B<input type = "radio" name="location" value="삼환하이펙스B" ><br>
               유스페이스1<input type = "radio" name="location" value="유스페이스1"><br>
               유스페이스2<input type = "radio" name="location" value="유스페이스2" ><br>
              H스퀘어<input type = "radio" name="location" value="H스퀘어" ><br><br>
            
     기존 음식 종류 : ${ param.foodCategory }<br>
     음식 종류 :  <br>한식<input type = "radio" name="foodCategory" value="한식" checked="checked"><br>
               양식<input type = "radio" name="foodCategory" value="양식" ><br>
               중식<input type = "radio" name="foodCategory" value="중식"><br>
               일식<input type = "radio" name="foodCategory" value="일식" ><br>
              기타<input type = "radio" name="foodCategory" value="기타" ><br><br>
      
		
		맛집 메뉴 : <textarea rows="10" cols="30" name="menu" required="required">${param.resMenu}</textarea><br><br>
		
		맛집 소개 : <textarea rows="10" cols="30" name="introduction" required="required">${param.resIntro}</textarea><br><br>
		
		사진 첨부: <input type="file" name="image" multiple width="100"> 
		
		<input type="hidden" name="update" value="변경모드로 향하기">
		<p>
		<input type="submit" value="변경">
		<p>
		</form>
		
		</div>
		</div>
<jsp:include page="/footer.jsp"/>
</html>