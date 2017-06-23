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
	$("#searchBtn").on("click", function(){
		alert($("input#id").val());
		//beforeSend를 ajax 처리할 수도 -> 조건문으로 검사해서 return;
		$.ajax({
			"url":"/spring_mvc_ajax/member/searchById.do",
			"type":"POST",	
			"data":"id="+$("input#id").val(), // ={"id":$(#id).val()}	// 요청파라미터 (1. queryString:"name=value&name=value" / 2. 객체 : {name:value})
			//"dataType":"text",	// 서버단에서 응답한 응답한 데이터의 타입 지정 (text:기본-문자열 => 생략가능 /)
			"beforeSend":function(){	//요청 파라미터 검증 (유효성 검사)
				if(!$("input#id").val()){
					alert("조회할 ID를 입력하세욥");
					return false;
				}
			},	// end of beforeSend
			"success":function(responseText){		// 정상 응답(200)이 왔을 때 호출 될 callback 함수.
				alert(responseText);
				//$("div#result").html(responseText);
				$("div#result").append(responseText);
				
			},
			"error":function(){
				$("div#result").text("오류발생했어용!!!!");
			}
			
		});	//end of ajax
	});	//end of #searchBtn
	
	$("#searchBtn2").on("click", function(){
		alert($("input#id").val());
		//beforeSend를 ajax 처리할 수도 -> 조건문으로 검사해서 return;
		$.ajax({
			"url":"/spring_mvc_ajax/member/searchById_json.do",
			"type":"POST",	
			"data":"id="+$("input#id").val(), // ={"id":$(#id).val()}	// 요청파라미터 (1. queryString:"name=value&name=value" / 2. 객체 : {name:value})
			"dataType":"json",	// 서버단에서 응답한 응답한 데이터의 타입 지정 (text:기본-문자열 => 생략가능 /)
			"beforeSend":function(){	//요청 파라미터 검증 (유효성 검사)
				if(!$("input#id").val()){
					alert("조회할 ID를 입력하세욥");	
					return false;
				}
			},	// end of beforeSend
			"success":function(obj){		// 정상 응답(200)이 왔을 때 호출 될 callback 함수.
				alert(obj);
				//$("div#result").html(responseText);
				$("div#result").append("[ID :"+obj.id+"] "+obj.birthday+"에 태어난 "+obj.age+"세의 "+obj.name+"를(을) 조회 하셨습니다.<br>");
				
			},
			"error":function(){
				$("div#result").text("오류발생했어용!!!!");
			}
			
		});	//end of ajax
	});	//end of #searchBtn
});

</script>
<body>

<h2>Ajax 요청</h2>
<label for="id">조회할 ID</label><input type="text" name="id" id="id">
<button type="button" id="searchBtn">조회</button>
<button type="button" id="searchBtn2">조회2</button>
<hr>
<div id="result">

</div>

</body>
</html>