<%@ page contentType="text/html;charset=UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
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
<!-- 삭제  -->
<h3>등록된 사진들</h3>
		<table>
		<c:forEach items="${requestScope.result}" var="name" end="3">
				<tr>
					<td>
						<form action="${initParam.rootPath}/tp/imagedelete" method="post">
							<input type="hidden" name="resId"
								value="${requestScope.restaurtid}"> <input type="hidden"
								name="name" value="${name}"><br> <img
								src="${initParam.rootPath}/up_images/${name}" width="150px"><br>
							<input type="submit" value="삭제">
						</form>
					</td>
				</tr>
				</c:forEach>
		</table>
		<br>


<!--전체사진 삭제 -->
<form action="${initParam.rootPath}/tp/imagedelete" method="post">
   <input type="submit" value="전체 사진 삭제"><br>
</form>

<a href="/TastyPangyo/member/memberSelect.jsp">관리자 페이지</a>
 </div>
</div>


<!---------------------------------------소개 내용---------------------------------------------->

<jsp:include page="/footer.jsp"/>