<%@ page contentType="text/html;charset=UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>

	<h1>맛집 등록(TastyPanGyo)</h1>
		<body>

		<form action="/TastyPangyo/insertRes" method="post" enctype="multipart/form-data">

		맛집 이름 : <input type = "text" name="resName" required="required"><br><br>
		
		전화번호 : <input type="text" name="resTelNum" required="required"><br><br>
		
		맛집 위치 :<br> 삼환하이펙스A<input type = "radio" name="location" value="삼환하이펙스A" checked="checked" ><br>
				   삼환하이펙스B<input type = "radio" name="location" value="삼환하이펙스B" ><br>
				   유스페이스1<input type = "radio" name="location" value="유스페이스1"><br>
				   유스페이스2<input type = "radio" name="location" value="유스페이스2" ><br>
				  H스퀘어<input type = "radio" name="location" value="H스퀘어" ><br><br>
		
		음식 종류 : <br>한식<input type = "radio" name="foodCategory" value="한식" checked="checked" ><br>
				   양식<input type = "radio" name="foodCategory" value="양식" ><br>
				   중식<input type = "radio" name="foodCategory" value="중식"><br>
				   일식<input type = "radio" name="foodCategory" value="일식" ><br>
				  기타<input type = "radio" name="foodCategory" value="기타" ><br><br>
		
		맛집 메뉴 : <textarea rows="10" cols="30" name="menu" placeholder="메뉴를 입력해 주세요" required="required"></textarea><br><br>
		
		맛집 소개 : <textarea rows="10" cols="30" name="introduction" placeholder="소개를 입력해 주세요" required="required"></textarea><br><br>
		
		사진 첨부 :<input type="file" name="image" multiple width="100"> 
	
		<br>
		<input type="submit" value="등록"> 		
		</form>
		</body>

</html>