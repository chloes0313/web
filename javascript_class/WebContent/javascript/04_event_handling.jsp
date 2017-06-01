<%@ page contentType="text/html; charset=UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>

<script type="text/javascript">
function clearTxt(txt){
	if(txt.value == "id: "){
		txt.value='';
	}
}

function checkString(tag){
	// tag : 입역태그의 value가 6글자 이상이면 value값을 alert(),
	//		6글자 미만이면 "6글자 이상 입력하세요"를 alert()	
	if(tag.value.length < 6){
		alert('6글자 이상 입력해요!');
		return;
	}else{
		alert(tag.value.length+'글자 입력했군용?(입력내용:'+tag.value+')');
	}
	
}


var flag = cunfirm(){

	//전송  NO 
	return false;


}
	
</script>


</head>
<body>

<%-- 
	event handler 코드에서 this는 event소스를 가리킴
	onsubmit/onreset Event Handler는 <form태그에 붙여준다>
 --%>

<form action="a.jsp" onsubmit="return confirm('전송할라규?');">
	Text : <input type="text" name="txt" onblur="alert('포커스 잃음');"><br>
	ID : <input type="text" value="id : " name="id" onfocus="clearTxt(this);" onblur="if(!this.value){this.value='id: ';}"><br>
	
	자기소개<br>
	<textarea cols="30" rows="5" onkeyup="alert(this.value)"></textarea><p>

	Text입력 여부? : <input type="text" name="txt2" onblur="checkString(this)"><p>
	<input type="submit" value="전송">
</form>
</body>
</html>




