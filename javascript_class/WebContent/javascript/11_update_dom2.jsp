<%@ page contentType="text/html;charset=EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>


<script type="text/javascript">
function appendChildTest(){
	// Element Node 생성
	var p = document.createElement("p");	// <p> 생성
	p.setAttribute("style", "background-color:orange");
	
	var txt = document.createTextNode("새로운 라인 : "+num++);	// 텍스트 객체 생성
	p.appendChild(txt);	// <p style= 'background-color:orange'> 새로운 라인 : 0 </p>
	var layer = document.getElementById("layer");
	layer.appendChild(p);	// 관리자 모드 (F12)에서 Element 확인
	
	 

}



function appendTable(){
	
	var tbody = document.getElementById("tbody"); 
	var tr = document.createElement("tr");
	var tdName = document.createElement("td");
	var tdAge = document.createElement("td");
	var tdAdd = document.createElement("td");
	var thead = document.getElementById("thead"); 
	
	var txtName = document.createTextNode("새로운Name");
	var txtAge = document.createTextNode("새로운Age");
	var txtAdd = document.createTextNode("새로운Add");
	
	tdName.appendChild(txtName);
	tr.appendChild(tdName);
	
	tdAge.appendChild(txtAge);
	tr.appendChild(tdAge);
	
	tdAdd.appendChild(txtAdd);
	tr.appendChild(tdAdd);

	tbody.appendChild(tr);

}

function appendTableFor(){	//포문으로 돌리기
	
	var tbody = document.getElementById("tbody"); 
	var tr = document.createElement("tr");	
	var thead = document.getElementById("thead"); 
	
	for(var i=0; i < thead.children[0].children.length; i++){
		var td_i = document.createElement("td");
		var txt_i = document.createTextNode("새로운 칸");
		td_i.appendChild(txt_i);
		tr.appendChild(td_i);
	}

	tbody.appendChild(tr);

}

function deleteAllTable(){
	var tbody = document.getElementById("tbody"); 
	//tbody내의 모든 tr행을 삭제.
	   while(tbody.hasChildNodes()){
	      tbody.removeChild(tbody.firstChild);
	   }
}

function createTable(){
	   var tbody= document.getElementById("tbody");
	   
	   //tbody내의 모든 tr행을 삭제.
	   while(tbody.hasChildNodes()){
	      tbody.removeChild(tbody.firstChild);
	   }
	   
	   var tr = document.createElement("tr");
	   var td1 = document.createElement("td");
	   var td2 = document.createElement("td");
	   var td3 = document.createElement("td");
	   

	   var name = document.createTextNode("새이름");
	   var age = document.createTextNode("나이");
	   var address= document.createTextNode("주소");
	   
	   td1.appendChild(name);
	   td2.appendChild(age);
	   td3.appendChild(address);
	   
	   tr.appendChild(td1);
	   tr.appendChild(td2);
	   tr.appendChild(td3);
	   
	   tbody.appendChild(tr);
}



</script>



</head>
<body>

<button type="button" onclick="appendTable();">테이블 만들기</button>
<button type="button" onclick="appendTableFor();">테이블 만들기(for)</button>
<button type="button" onclick="deleteAllTable();">테이블내용삭제</button>
<button type="button" onclick="createTable();">테이블새로만들기</button>
<table width="500" border="1">
	<thead id="thead">
		<tr>
			<th>이름</th>
			<th>나이</th>
			<th>주소</th>
		</tr>
	</thead>
	<tbody id="tbody">
		
	</tbody>
</table>



</body>
</html>