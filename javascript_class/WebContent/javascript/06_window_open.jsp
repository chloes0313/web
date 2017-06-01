<%@ page contentType="text/html; charset=UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<script type="text/javascript">
function popupAddress(){
	/*
	**팝업 띄우기 : window.open("URL","띄울 창 이름","창 옵셩")
		- url : 새창이 떴을 때 보여줄 화면 URL
		- 띄울 창 이름 : 창 이름 지정한 경우 -> 같은 이름의 창이 존재하면 그 창을 이용하고 같은 이름의 창이 없으면 새창 띄움
					창 이름 지정 안한 경우 -> 무조건 새창 띄움
		- 창 옵션 : 넓이 높이 등 설정, 여러 설정을 할 때는','로 구분
	*/
	window.open("/javascript_class/javascript/06_window_popup.jsp",
			"address",
			"toolbar=1, location=1, status=1, menubar=1, scrollbar=1, resizable=1, directories=1, width=800px, height=500px, top=10, left=10")
	
	// 미니플젝 리뷰 작성 창 띄울 때 쓴거 : window.open('/TastyPangyo/review/register_form.jsp',
	//								'_blank',
	//								'toolbar=1, location=1, status=1, menubar=1, scrollbar=1, resizable=1, directories=1, width=800px, height=500px, top=10, left=10')

}
</script>
</head>
<body>
<form action=""	method="post" name="join_form">
<!-- 각종 입력 양식 -->

우편번호 : <input type="text" name="zipcode">
<input type="button" value="주소검색" onclick="popupAddress()"><br>
주소 : <input type="text" size="50" name="address"><br>

<input type="submit" value="등록">
</form>
</body>
</html>