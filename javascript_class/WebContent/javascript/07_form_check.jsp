<%@ page contentType="text/html; charset=UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<script type="text/javascript">
function showFormAttr(){
	// form의 각종 속성 조회
	// form에 접근 : [window.]document.form_name속성 값
	/* var action = window.document.form1.action;
	alert(action);
	alert(window.document.form1.method);
	alert(window.document.form1.enctype);
	window.document.form1.action = 'test.jsp'; */
	var f1 = document.form1;
	alert(f1.action+'-'+f1.method+'-'+f1.enctype);
	f1.action
	// 효원이가 적어놨음
}

function textForm(){
	var f1 = document.form1;
	var name = f1.name.value;
	var pwd = f1.pwd.value;
	var ta = f1.ta.value;
	alert(name+" - "+pwd+" - "+ta);
	// 이름은 10글자 이하여야 한다. -> 글자수 체크 : 문자열.length
	if(name.length < 10){
		alert("이름은 10글자 이상입니다.");
		f1.name.focus();
		return;
		// pwd는 1글자 이상
		if(!pwd){
			alert("패스워드를 입력하세요");
			f1.pwd.focus();	// 포커스를 이동
			return;
		}
	}else{
		
	}
	
	
	
	f1.submit();
	
}

function checkboxCheck(){
	// name = hobby인 케츠박스 중 체크된 것 개수 조회
	var hobbyChk= document.form1.hobby;	// name이 hobby인 체크박스가 여러개이므로 배열이 리턴됨
	var count = 0;
	for(var i = 0; i < hobbyChk.length; i++){
		if(hobbyChk[i].checked){
			count++;
			
		}	// 체크박스/라디오버튼 체크여부 알려주는 속성
	}
	alert(count+"개 체크 됨");

}

function checkAllChk(){
	var flag = document.form1.checkAll.checked;
	var hobbies = document.form1.hobby;
	for(var i = 0; i < hobbies.length; i++){
		hobbies[i].checked = flag;
	}
}

function radioCheck(){
	var genderList = document.form1.gender;	// radio배열
	var flag = false;
	for(var i = 0; i < genderList.length; i++){
		if(genderList[i].checked){
			flag = true;
			break;
		}
	}
	if(!flag){
		alert("성별이 체크되지 않았음");
	}else{
		alert("성별 체크됨");
	}
}

function selectExam(){
	var selectPhone = document.form1.phone1;
	// 선택된 option의 index
	alert(selectPhone.selectedIndex);
	// 선택된 option의 value값을 조회.
	var optionList = selectPhone.options;	// select하위의 option들이 배열로 리턴.
	var value = optionList[selectPhone.selectedIndex].value;
	var text = optionList[selectPhone.selectedIndex].text;
	alert(value+": "+text);
	
	var value = selectPhone.options[selectPhone.selectedIndex].value;
	alert(value);
	alert(selectPhone.value);	//IE 낮은 버전에서 안됨.
}

function checkForm(){
	var f1 = document.form1;
	var name = f1.name.value;
	var pwd = f1.pwd.value;
	
	//* 이름은 필수 (1글자 이상)
		if(name.length < 1){	//* 이름은 필수 (1글자 이상)
		
		alert('이름은 1글자 이상 입니다.');
		f1.name.focus();
		return false;
	}
	
	
	// * 패스워드 6글자 이상
	
	if(pwd.length < 6){
		alert('비번은 6글자 이상 입니다.');	// * 패스워드 6글자 이상
		f1.pwd.focus();
		return false;
	}
	
	
	
	// * 성별은 필수
	var genderList = document.form1.gender;
	var flag = false;
	for(var i = 0; i < genderList.length; i++){
		if(genderList[i].checked){
			flag = true;	// 투르로 바꾸고 나옴
			break;
		}
	}
	// true = 선택한 애들 있음!
	if(!flag){
		alert("성별이 체크되지 않았음");
		return false;
	}
	
	
	
	//* 취미 3개 이상
	var hobbyChk= f1.hobby;
	var count = 0;
	for(var i = 0; i < hobbyChk.length; i++){
		if(hobbyChk[i].checked){
			count++;
		}	// 체크박스/라디오버튼 체크여부 알려주는 속성
	}
	if( count < 3){
		alert("3개 이상 선택하세요! (현재 선택 수:"+count+")");
		return false;
	}
	
	
	//* 핸드폰 앞자리는 선택되야한다.
	
	if(f1.phone1.selectedIndex==0){
		alert('핸드폰번호 선택해용');
		return false;
	}
	
	

	
	
	f1.submit();
	
}

/*
 * 이름은 필수 (1글자 이상)
 * 패스워드 6글자 이상
 * 성별은 필수
 * 취미 3개 이상
 * 핸드폰 앞자리는 선택되야한다.
 
 	전송버튼 눌렀을 때 하나라도 클리면 서버로 전송하지 않는다.
 	경고창에 무엇이 틀렸는지 안ㄹ려주고 포커스를 틀린 곳으로 이동(이름/패스워드)
 */
</script>

</head>
<body>
	<form name="form1" action="exam.jsp" method="post" onsubmit="return checkForm();">
	이름 : <input type="text" name="name"><br>
	패스워드 : <input type="password" name="pwd"><br>
	<textarea name="ta" rows="5" cols="50"></textarea>
	
	
	<p>
	<select name="phone1" onchange="selectExam();">
		<option>핸드폰 번호를 선택하세요</option>
		<option>010</option>
		<option value="SKT">011</option>	
		<option>016</option>
		<option>017</option>
		<option>018</option>
		<option>019</option>
	</select>
	<p>
	성별 : <label>남성 : <input type="radio" name="gender" value="남성"></label>
		    <label>여성 : <input type="radio" name="gender" value="여성"></label>
	<p>	   
	취미 선택<br>
	<label>독서 : <input type="checkbox" name="hobby" value="독서"></label>
	<label>영화감상 : <input type="checkbox" name="hobby" value="영화감상"></label>
	<label>음악감상 : <input type="checkbox" name="hobby" value="음악감상"></label>
	<label>게임 : <input type="checkbox" name="hobby" value="게임"></label>
	<label>운동 : <input type="checkbox" name="hobby" value="운동"></label>
	
	<label>모두선택 <input type="checkbox" name="checkAll" onclick="checkAllChk()"></label>

	<p>
	<input type="submit" value="전송" >
</form>

<button onclick="showFormAttr();">폼속성조회</button>
<button onclick="textForm();">텍스트(text/password/textare) 폼 조회</button>
<button onclick="checkboxCheck();">체크박스 조회</button>
<button onclick="radioCheck();">라디오버튼조회</button>
</body>
</html>




