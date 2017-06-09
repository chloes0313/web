<%@ page contentType="text/html; charset=UTF-8"%>
<!DOCTYPE html>
<html>
<head> 
<meta charset="UTF-8">
<title>Insert title here</title>

<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
<script type="text/javascript">
function selectorTest(){
	$("tr:first").css("background-color", "pink");
	$("tr:last").css("background-color", "cyan");
	$("tr:eq(3)").css("background-color", "yellow");	// 모든 tr 중 4번째
	
	$("table#productTb tr:first").css("background-color", "pink");
	// 내가한거: table id가 productTb인 요소의 자손인 tr의 첫번째 자식

	$("tr:first-child").css("background-color", "gray");	// 모든 tr의 첫번째 
	 
	$("tr:nth-child(3n-1)").css("color", "red");	// 3의 배수 -1번째 자식인 tr
	//---------1번째 테이블 배경 블랙/글자 화이트 except 3번째 컬럼
	
	/* 
	$("table#memberTb").css("background-color","black");
	$("table#memberTb").css("color","white");
	 */
	$("table#memberTb td").css("background-color","black").css("color","white");
	 
	/*	//3번째 td들만 다시 배경 / 글자 색 변경
	$("table#memberTb td:nth-child(3)").css("background-color","white");
	$("table#memberTb td:nth-child(3)").css("color","black");
	 */
	$("table#memberTb td:nth-child(3)").css("background-color","white").css("color","black");
	// -> 메서드 체인 : DOM Node들을 다루는 메서드는 처리 후 jQuery 객체를 다시 리턴한다. 그렇기 때문에 DOM노드를 다루는 메서들을 연속해서(Chain) 호출할 수 있다
}

function getText(){
	var txt = document.getElementById("txt").value;
	
	$("td").css("background-color", "white");
	$("td:contains("+txt+")").css("background-color", "plum");
	
	//document.getElementById("txt").value="";
	$("#txt").val("");
}

</script>

</head>
<body>
	<button onclick="selectorTest()">selectorTest()</button><br>
	<input type="text" id="txt"><input type="button" value="조회" onclick="getText();">
	<table id="memberTb">
		<tr>
			<td>ID</td>
			<td>이름</td>
			<td>주소</td>
			<td>전화번호</td>
			<td>마일리지</td>
		</tr>
		<tr>
			<td>aaaa</td>
			<td>이순신</td>
			<td>서울</td>
			<td>02-111-2222</td>
			<td>30000</td>
		</tr>
		<tr>
			<td>bbbb</td>
			<td>홍길동</td>
			<td>인천</td>
			<td>032-222-3333</td>
			<td>40000</td>
		</tr>
		<tr>
			<td>cccc</td>
			<td>유관순</td>
			<td>부산</td>
			<td>051-222-3333</td>
			<td>350000</td>
		</tr>
		<tr>
			<td>dddd</td>
			<td>장영실</td>
			<td>광주</td>
			<td>062-555-6666</td>
			<td>92000</td>
		</tr>
		<tr>
			<td>eeee</td>
			<td>김유신</td>
			<td>경주</td>
			<td>054-777-1222</td>
			<td>50000</td>
		</tr>
		<tr>
			<td>ffff</td>
			<td>계백</td>
			<td>부여</td>
			<td>042-421-7334</td>
			<td>940000</td>
		</tr>
		<tr>
			<td>gggg</td>
			<td>을지문덕</td>
			<td>평양</td>
			<td>042-421-7334</td>
			<td>32000</td>
		</tr>		
	</table>
	<br>
	<table border="1" id="productTb">
		<tr>
			<th>상품ID</th>
			<th>상품명</th>
			<th>제조사</th>
			<th>가격</th>
		</tr>
		<tr>
			<td>p-1</td>
			<td>LG 3D TV</td>
			<td>LG 전자</td>
			<td>3230000</td>
		</tr>
		<tr>
			<td>p-2</td>
			<td>파브 3D TV</td>
			<td>삼성 전자</td>
			<td>2000000</td>
		</tr>
		<tr>
			<td>p-3</td>
			<td>하우젠 냉장고</td>
			<td>삼성 전자</td>
			<td>1500000</td>
		</tr>
		<tr>
			<td>p-4</td>
			<td>x-note 노트북</td>
			<td>LG 전자</td>
			<td>990000</td>
		</tr>
		<tr>
			<td>p-5</td>
			<td>갤럭시 노트</td>
			<td>삼성 전자</td>
			<td>730000</td>
		</tr>		
		<tr>
			<td>p-6</td>
			<td>아이폰</td>
			<td>애플</td>
			<td>6320000</td>
		</tr>
		<tr>
			<td>p-7</td>
			<td>G패드</td>
			<td>LG 전자</td>
			<td>332000</td>
		</tr>		
		<tr>
			<td>p-8</td>
			<td>아이패드</td>
			<td>애플</td>
			<td>820000</td>
		</tr>		
	</table>
</body>
</html>