<%@ page contentType="text/html; charset=UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<script type="text/javascript" src="/jQuery_class/scripts/jquery-3.2.1.js"></script>
<script type="text/javascript">
$(document).ready(function(){
	$("#textBtn").on("click", function(){
		//$.ajax()를 이용해 서버에 요청
		$.ajax({
			"url":"/jQuery_class/ajax/AjaxServlet",	// 요청 URL (서블릿) 설정
			"type":"POST",	// 요청 방식 (POST/GET)
			"data":"id="+$("#id").val(),	// 요청파라미터 (1. queryString:"name=value&name=value" / 2. 객체 : {name:value})
			"dataType":"text",	// 서버단에서 응답한 응답한 데이터의 타입 지정 (text:기본-문자열 => 생략가능 /)
			"beforeSend":function(){	// 요청 전 호출 될 callback함수 등록. 함수가 reutrn false를 하면 요청 취소 -> 요청 파라미터 검증 (유효성 검사)
				if(!$("#id").val()){
					alert("조회할 ID를 입력하세욥");
					return false;
				}
			},	// end of beforeSend
			"success":function(responseText){		// 정상 응답(200)이 왔을 때 호출 될 callback 함수.
				$("#layer").text(responseText);
				$("#list").append("<li>"+ responseText +"</li>");
			}
			
		});	// end of $.ajax
	});	//end of textBtn
	
	$("#jsonBtn").on("click", function(){
		$.ajax({
			"url":"/jQuery_class/ajax/JsonServlet",
			"type":"POST",
			"data":{"id":$("#id").val()},
			"dataType":"json",
			"beforeSend":function(){
				if(!$("#id").val()){
					alert("조회할 ID를 입력하세욥");
					return false;
				}
			},	// end of beforeSend
			"success":function(obj){
				//alert(obj.name+", "+obj.mileage);
				$("#layer").html("ID : "+obj.id+"<br>Name : "+obj.name+"<br>Marriage : "+ (obj.marriage?"기혼":"미혼"));
			},
			"error":function(xhr, msg, code){
				//매개변수 : 1. XMLHttpRequest, 2.응답메세지(success/error), 3. HTTP응답 메세지(모두)
			alert("오류발생-" + code);	// url 주소 오류내서 시험 해보장
			}
		
		});	// end of $.ajax
	});	// end of jsonBtn
});
</script>
</head>
<body>

ID : <input type="text" name="id" id="id">
<input type="button" value="text요청" id="textBtn">
<input type="button" value="json요청" id="jsonBtn">

<hr>

<div id="layer"></div>

<div id="list"></div>
</body>
</html>




