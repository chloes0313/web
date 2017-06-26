<%@ page contentType="text/html;charset=UTF-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>


<div class="container" style="font-size: 20px;">
	<div class="row">
		<div class="col-sm-12">
			<h1>가입을 환영합니다.</h1>
			<h2>가입된 정보</h2>
		</div>
	</div>
	<div class="row">
		<div class="col-sm-2">사용자 ID</div>
		<div class="col-sm-10">${requestScope.user.userId }</div>
	</div>
	<div class="row">
		<div class="col-sm-2">이름</div>
		<div class="col-sm-10">${requestScope.user.userName}</div>
	</div>
	<div class="row">
		<div class="col-sm-2">이메일주소</div>
		<div class="col-sm-10">${requestScope.user.userEmail}</div>
	</div>
</div>