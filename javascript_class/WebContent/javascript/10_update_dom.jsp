<%@ page contentType="text/html; charset=UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<script type="text/javascript">
var num = 0;
var num2 = 1;
function appendChildTest(){
	// Element Node 생성
	var p = document.createElement("p");	// <p> 생성
	p.setAttribute("style", "background-color:orange");
	
	var txt = document.createTextNode("새로운 라인 : "+num++);	// 텍스트 객체 생성
	p.appendChild(txt);	// <p style= 'background-color:orange'> 새로운 라인 : 0 </p>
	var layer = document.getElementById("layer");
	layer.appendChild(p);	// 관리자 모드 (F12)에서 Element 확인
	
	 

}
function insertBeforeTest(){
	
	// 특정 노드 객체를 중간에 넣기 위해서 사용
	// <p style='background-color:gray'>새로운 라인</p>
	var p = document.createElement("p");
	p.setAttribute("style", "background-color:gray");
	var txt = document.createTextNode("새로운 라인 :"+ num++);
	p.appendChild(txt);
	var layer = document.getElementById("layer");
	//layer.insertBefore(p,layer.firstChild);	// layer의 첫번째 자식 앞에 p를 붙여라우
	layer.insertBefore(p,layer.children[2]);	// 
	

}
function deleteAllNode(){
	// 1. div#layer 자체 삭제 -> 삭하제면 다시 추가 불가능(레이어 자체 삭제)
	//var layer = document.getElementById("layer");
	//layer.parentNode.removeChild(layer);
	
	// 2. p들만 전부 삭제
	var layer = document.getElementById("layer");
	while(layer.hasChildNodes){	// layer의 자식 Node가 있는 동안
		layer.removeChild(layer.firstChild);	// 첫번째 있는 자식 Node 지우기 , 노드 순서 땡겨짐
	}
	
	
}
function deleteNodeByIdx(){
	var layer = document.getElementById("layer");
	var idx = document.getElementById("idx");
	if(isNaN(idx.value)) {	// 공백여러개 넣으면?
		alert("index는 정수를 넣으세야");
		idx.value = "";
		idx.focus();
		return;
	}
	
	layer.removeChild(layer.children[idx.value]);
	
	

}

function innerHTMLtest(){
	// Element노드객체.innerHTML -> 속성 :  노드 하위 요소들을 문자열로 관리하는 속성.
	var layer = document.getElementById("layer");
	var txt = layer.innerHTML;
	alert(txt);
	// 조회 보다는 변경에 주로 사용
	layer.innerHTML = "Hello World";
}

</script>
</head>
<body>

<div id="layer">
	<p style="background-color:blue">1번 라인</p><p style="background-color:red">2번 라인</p>
	<p style="background-color:yellow">3번 라인</p>
	<p style="background-color:green">4번 라인</p>
</div>
<p>
<input type="button" onclick="appendChildTest()" value="P 요소 추가">
<input type="button" onclick="insertBeforeTest()" value="P 요소 삽입"><p>

<input type="text" id="idx" value="삭제할 노드 Index을 적으세요" onfocus="this.value='' ">
<input type="button" onclick="deleteNodeByIdx();" value="n번째 노드 삭제">
<input type="button" onclick="deleteAllNode()" value="모든 노드 삭제">
<input type="button" onclick="innerHTMLtest()" value="innerHTMLtest">
</body>
</html>











