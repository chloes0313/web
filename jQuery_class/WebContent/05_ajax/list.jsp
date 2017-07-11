<%@ page contentType="text/html;charset=UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<script type="text/javascript" src="/jQuery_class/scripts/jquery-3.2.1.js"></script>
<script type="text/javascript">
$(document).ready(function(){
	$("button#memberListBtn").on("click", function(){
		$.ajax({
			"url":"/fridger/show/list.do",
			"type": "POST",
			"dataType": "json",
			"success": function(list){
				//내가 한 코딩 
				$("tbody").empty();
				for(var i = 0; i< list.length; i++){
				$("tbody").append("<tr> <td>"+list[i].id+"</td><td>"+list[i].name+"</td><td>"+list[i].email+"</td><td>"+list[i].mileage+"</td><td>"+(list[i].marriage?"기혼":"미혼")+"</td> </tr>");
				} 
				
				//강사님 코딩
				/* var txt ="";
				$.each(list, function(){
					txt += "<tr> <td>"+this.id+"</td><td>"+this.name+"</td><td>"+this.email+"</td><td>"+this.mileage+"</td><td>"+(this.marriage?"기혼":"미혼")+"</td> </tr>";
					$("tbody").html(txt);	// 내용을 바꿔줌~~~~~ (갱신)
				});	// end of $.each
				 */
				
				/*
				$("tbody").empty();
				$.each(list, function(){
					$("tbody").append($("<tr>").append($("<td>").append(this.id))
							 .append($("<td>").append(this.name))
							 .append($("<td>").append(this.email))
							 .append($("<td>").append(this.mileage))
							 .append($("<td>").append(this.marriage?"기혼":"미혼"))); 
					
				});	// end of each
				*/
			}
		}); //end of $.ajax
	});	// end of memberListBtn
});	// end of ready
</script>


<style>



</style>
</head>
<body>

<button type="button" id="memberListBtn">회원 정보를 조회해보자</button>

<table border="1">
	<thead>
		<tr>
			<th style="width:50px;">ID</th>
			<th style="width:100px;">이름</th>
			<th style="width:170px;">이메일</th>
			<th style="width:80px;">마일리지</th>
			<th style="width:70px;">결혼여부</th>	
		</tr>
	</thead>
	<tbody>
		<!-- 여기에다 조회 정보 뿌립니다! : VO 객체 하나당 tr -->
	</tbody>
</table>
</body>
</html>