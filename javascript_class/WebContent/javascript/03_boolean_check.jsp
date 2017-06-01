<%@ page contentType="text/html; charset=UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<script type="text/javascript">
function ifTest(){
/*
 * 제어문(조건문/반복문)의 조건절 부분에 Javascript는 모든 타입의 값을 다 넣을 수 있다.
 	각 타입들 마다 false의 역할을 하는 값들이 정의 되어 있다.
 	 - 문자열 : ""
 	 - 숫자 : 0
 	 - null, undefined
 	 
 */

	var str ="abc";
	//str = "";	
	if(str == "abc"){
		alert(str+true);
	}else{
		alert(str+false);
	}

	
	var num = 0;
	//num = 10;
	//num = -1;
	if(num){
		alert(num+" "+true);
	}else{
		alert(num+" "+false);
	}
	
	
	var var1;	//undefined
	//var1 = null;
	var1 = {name:'김영수', age:'20'};	//객체 생성
	if(!var1){
		alert(var1 +" "+false);
	}else{
		alert(var1 +" "+true);
	}

}
</script>
</head>
<body>

<button onclick="ifTest();">boolean 체크</button>
</body>
</html>