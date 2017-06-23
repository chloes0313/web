<%@ page contentType="text/html;charset=UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<script type="text/javascript" src="/spring_mvc_ajax/scripts/jquery-3.2.1.js"></script>
<script type="text/javascript">
$(document).ready(function(){
	$("table#listTable").hide();
	
	$("#searchBtn").on("click", function(){
		$.ajax({
			"url":"/spring_mvc_ajax/member/list.do",
			"type":"POST",	
			"dataType":"json",
			"success":function(list){		// 정상 응답(200)이 왔을 때 호출 될 callback 함수.
				alert(list);
				
				var txt="";
				
				$.each(list, function(){
					txt = txt+"<tr> <td>"+this.id+"</td> <td>"+this.name+"</td> <td>"+this.age+"</td> <td>"+this.birthday+"</td> </tr>";
					
				});
				 $("tbody").html(txt);
				 $("table#listTable").show();
				
				
			},
			"error":function(){
				$("div#result").text("오류발생했어용!!!!");
			}
			
		});	//end of ajax
	});	//end of #searchBtn
});
</script>
	
<body>
<h2>회원목록조회</h2>

<button type="button" id="searchBtn">회원 리스트 조회</button>
<hr>
<div id="result">
	<table id="listTable" border="1" width="550px">
		<thead>
			<tr>
				<th>아이디</th>
				<th>이름</th>
				<th>나이</th>
				<th>생일</th>
			</tr>
		</thead>
		<tbody>
		</tbody>
	</table>
</div>


</body>
</html>