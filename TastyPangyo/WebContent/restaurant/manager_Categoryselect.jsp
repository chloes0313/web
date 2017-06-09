<%@ page contentType="text/html;charset=UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link rel="stylesheet" href="/TastyPangyo/menu.css">
</head>
<jsp:include page="/manage/menu.jsp"/>

<!---------------------------------------내용 설정-------------------------------------------->
<div id="div_con">
	<div class="content1">

<%-- 맛집 --%>
	<form action="/TastyPangyo/selectRes" method="post">
	음식 종류 선택<br>한식<input type = "radio" name="foodCategory" value="한식" checked="checked"><br>
				   양식<input type = "radio" name="foodCategory" value="양식" ><br>
				   중식<input type = "radio" name="foodCategory" value="중식"><br>
				   일식<input type = "radio" name="foodCategory" value="일식" ><br>
				  기타<input type = "radio" name="foodCategory" value="기타" ><br>
				<input type = "submit" value ="조회하기">
	</form>			
	
	  </div>
</div>


<!---------------------------------------소개 내용---------------------------------------------->

<jsp:include page="/footer.jsp"/>