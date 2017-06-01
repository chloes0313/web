<%@ page contentType="text/html; charset=UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<script type="text/javascript">
function showAddress(zipcode, address){
	// 값을 가지고 부모 페이지로 간다
	console.log(zipcode+", "+address)

	opener.document.join_form.zipcode.value= zipcode;
	opener.document.join_form.address.value= address;
	if(window.confirm("창을 닫겠습니까?")){
		window.close();
		
	}
}
</script>
</head>
<body>
<h2>주소검색결과</h2>
동 : <input type="text" name="dong"> <input type="button" value="조회"><p>
<a href="javascript:showAddress('111-222', '경기도 성남시 분당구 삼평동');">111-222 경기도 성남시 분당구 삼평동</a><br>
<a href="javascript:ahowAddress('111-333', '111-333 경상남도 진주시 삼평동');">111-333 경상남도 진주시 삼평동</a><br>
<a href="javascript:showAddress('222-333', '전라북도 전주시 삼평동');">222-333 전라북도 전주시 삼평동</a><p>
<button onclick="window.close();">닫기</button>
</body>
</html>