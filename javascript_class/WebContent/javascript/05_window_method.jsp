<%@ page contentType="text/html; charset=UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<script type="text/javascript">
function numberTest(){
	var num1 = parseInt("10");	// 문자열(정수형태) -> 정수
	var num2 = parseInt("120");
	var result = num1+num2;
	//window.alert(result);
	alert(result);
	//console.log("결과출력 : " + result);	// 관리자모드(F12) console창에서 확인 

	var num3 = window.parseFloat("30.2");	//문자열(실수형태) -> 실수
	var num4 = parseFloat("20.5");
	alert(num3+num4);
}
//NaN - Not a Number 의 약자
function isNaNTest(text){
	var flag= isNaN(text);	// NaN - Not a Number => true:숫자형태 아니다!
	alert(flag);	// true
	var num= 0;
	if(!isNaN(text)){	// false : 숫자이다
		num = parseFloat(text);
	}
	alert(num);
	
}
</script>
</head>
<body>
<button onclick="numberTest();">numberTest() 호출</button>
<button onclick="isNaNTest('abcde');">isNaNTest('abcde');</button>
<button onclick="isNaNTest('101');">isNaNTest('101');</button>
</body>
</html>






















