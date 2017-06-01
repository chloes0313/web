<%@ page contentType="text/html; charset=UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<script type="text/javascript">
function searchByName(){
	//document.getElementsByName() : 배열 -- 태그의 name속성 값으로 node 조회
	var nameList = document.getElementsByName("name");
	for(var i = 0; i < nameList.length; i++){
		nameList[i].value = "Hello-"+i;
		if(i%2 == 0){
			nameList[i].size = 50;	// size :길이지정
		}
	}
}

function searchById(){
	// document.getElementById() : 객체 -> tag의 id 속성값으로 조회 (많이 사용해요)
	var myid = document.getElementById("myid");
	myid.value = 30300;
}

function searchByTagName(tagName){
	var list = document.getElementsByTagName(tagName);	//태그 이름으로 Node들 조회(배열로 리턴)
	for(var i = 0; i <list.length; i++){
		list[i].value = tagName+": "+list[i].nodeName;	// DOM객체.nodeName ->
		
	}
}

function searchByClassName(className){
	var list = document.getElementsByClassName(className);
	for(var i=0; i < list.length; i++){
		// 객채명.속성명
		list[i].style= "color:white; background:pink;";
	}
	
}
</script>
</head>
<body>
name=name : 
<input type="text" name="name">
<input type="text" name="name">
<input type="text" name="name">
<input type="text" name="name">
<input type="text" name="name">
<p>	<!-- myid의 부모노드->p -->
id=myid : 
<input type="text" name="age" id="myid">
<input type="text" name="age" id="myid">
<input type="text" name="age" id="myid">
</p>
<p>
<textarea></textarea>
<textarea></textarea>
</p>
<a href="" class="pink_color">링크1</a>
<a href="" class="pink_color">링크2</a><br>
<div class="pink_color">DIV입니다.</div>

<hr>
<input type="button" value="searchByName()호출" onclick="searchByName()">
<input type="button" value="searchById()호출" onclick="searchById()">
<input type="button" value="searchByTagName('textarea')호출"  onclick="searchByTagName('textarea')">
<input type="button" value="searchByTagName('input')호출" onclick="searchByTagName('input')">	
<input type="button" value="searchByClassName('pink_color')호출" onclick="searchByClassName('pink_color')">
</body>
</html>