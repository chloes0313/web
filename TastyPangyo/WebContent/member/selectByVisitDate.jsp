<%@ page contentType="text/html;charset=UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>

<!------------------------------------------ 스타일 적용 고정 link ------------------------------------------>

<link rel="stylesheet" href="/TastyPangyo/menu.css">

</head>

<!------------------------------------------ 상단 및 메뉴 고정 include ------------------------------------------>
	<!-- 마이페이지(/member/myPage.jsp), 관리모드(/member/memberSelect.jsp) 일때 경로 : /manage/menu.jsp -->
	<!-- 기본페이지(intro.jsp)에서 경로 : /common/menu.jsp -->
<jsp:include page="/manage/menu.jsp"/>


	<!---------------------------------------내용 설정-------------------------------------------->
	<div id="div_con">
		<div class="content1">
			<h1>최종 접속일로 회원 조회</h1><br>
			<form action="/TastyPangyo/memberByVisitDate">
				<input type="date" name="visitDate"> <input type="submit" value="찾기">
			</form>
		</div>
	</div>



<!---------------------------------------웹페이지 소개 내용 고정 include ---------------------------------------------->
	
<jsp:include page="/footer.jsp"/>
</html>