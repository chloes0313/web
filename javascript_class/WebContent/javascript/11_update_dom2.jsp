<%@ page contentType="text/html;charset=EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>


<script type="text/javascript">
function appendChildTest(){
	// Element Node ����
	var p = document.createElement("p");	// <p> ����
	p.setAttribute("style", "background-color:orange");
	
	var txt = document.createTextNode("���ο� ���� : "+num++);	// �ؽ�Ʈ ��ü ����
	p.appendChild(txt);	// <p style= 'background-color:orange'> ���ο� ���� : 0 </p>
	var layer = document.getElementById("layer");
	layer.appendChild(p);	// ������ ��� (F12)���� Element Ȯ��
	
	 

}



function appendTable(){
	
	var tbody = document.getElementById("tbody"); 
	var tr = document.createElement("tr");
	var tdName = document.createElement("td");
	var tdAge = document.createElement("td");
	var tdAdd = document.createElement("td");
	var thead = document.getElementById("thead"); 
	
	var txtName = document.createTextNode("���ο�Name");
	var txtAge = document.createTextNode("���ο�Age");
	var txtAdd = document.createTextNode("���ο�Add");
	
	tdName.appendChild(txtName);
	tr.appendChild(tdName);
	
	tdAge.appendChild(txtAge);
	tr.appendChild(tdAge);
	
	tdAdd.appendChild(txtAdd);
	tr.appendChild(tdAdd);

	tbody.appendChild(tr);

}

function appendTableFor(){	//�������� ������
	
	var tbody = document.getElementById("tbody"); 
	var tr = document.createElement("tr");	
	var thead = document.getElementById("thead"); 
	
	for(var i=0; i < thead.children[0].children.length; i++){
		var td_i = document.createElement("td");
		var txt_i = document.createTextNode("���ο� ĭ");
		td_i.appendChild(txt_i);
		tr.appendChild(td_i);
	}

	tbody.appendChild(tr);

}

function deleteAllTable(){
	var tbody = document.getElementById("tbody"); 
	//tbody���� ��� tr���� ����.
	   while(tbody.hasChildNodes()){
	      tbody.removeChild(tbody.firstChild);
	   }
}

function createTable(){
	   var tbody= document.getElementById("tbody");
	   
	   //tbody���� ��� tr���� ����.
	   while(tbody.hasChildNodes()){
	      tbody.removeChild(tbody.firstChild);
	   }
	   
	   var tr = document.createElement("tr");
	   var td1 = document.createElement("td");
	   var td2 = document.createElement("td");
	   var td3 = document.createElement("td");
	   

	   var name = document.createTextNode("���̸�");
	   var age = document.createTextNode("����");
	   var address= document.createTextNode("�ּ�");
	   
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

<button type="button" onclick="appendTable();">���̺� �����</button>
<button type="button" onclick="appendTableFor();">���̺� �����(for)</button>
<button type="button" onclick="deleteAllTable();">���̺������</button>
<button type="button" onclick="createTable();">���̺���θ����</button>
<table width="500" border="1">
	<thead id="thead">
		<tr>
			<th>�̸�</th>
			<th>����</th>
			<th>�ּ�</th>
		</tr>
	</thead>
	<tbody id="tbody">
		
	</tbody>
</table>



</body>
</html>