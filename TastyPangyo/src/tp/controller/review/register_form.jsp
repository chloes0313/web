<%@page import="tp.vo.Restaurant"%>
<%@page import="java.util.Date"%>
<%@ page contentType="text/html;charset=UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>


<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>insert a title</title>
<meta http-equiv="Content-Type" content="text/html; charset=euc-kr">
<script language="JavaScript">

function goSubmit() {
    window.opener.name = "parentPage"; // 부모창의 이름 설정
    document.myForm.target = "parentPage"; // 타켓을 부모창으로 설정
    document.myForm.action = "/TastyPangyo/review/register_forward.jsp";
    document.myForm.submit();
    self.close();
}
</script>
</head>




<body> 


	<h3>리뷰 등록 페이지</h3>
	<div class="review_form">
		<form id="review_form" name="myForm" method="post" onsubmit="goSubmit()">
			<fieldset class="review_form" size="150">
				<legend class="screen_out">리뷰등록 form</legend>
				<div class="row_group">
					<!-- 필수입력값(NOT NULL이여야 하는)은 input 속성으로 required를 줘서 반드시 입력값을 받고 넘어가게 하고
					 oninvalid  -->
					식당번호 <input id="readonly" name="restaurantId" value="${ sessionScope.selectRes.restaurantId }"
							size="40" readonly ><br>
					식당명 <input id="readonly" name="restaurantName" value="${ sessionScope.selectRes.restaurantName }" 
							size="40" readonly><br>
					작성자 <input id="readonly" name="memberId" value="${ sessionScope.login.memberId }"	
							size="40" readonly><br>
					별점 <span class="kostar">
						  <span class="input">
						    <input type="radio" name="kostar" id="p1" value="1"><label for="p1">1</label>
						    <input type="radio" name="kostar" id="p2" value="2"><label for="p2">2</label>
						    <input type="radio" name="kostar" id="p3" value="3"><label for="p3">3</label>
						    <input type="radio" name="kostar" id="p4" value="4"><label for="p4">4</label>
						    <input type="radio" name="kostar" id="p5" value="5" checked><label for="p5">5</label>
						    <input type="radio" name="kostar" id="p6" value="6"><label for="p6">6</label>
						    <input type="radio" name="kostar" id="p7" value="7"><label for="p7">7</label>
						    <input type="radio" name="kostar" id="p8" value="8"><label for="p8">8</label>
						    <input type="radio" name="kostar" id="p9" value="9"><label for="p9">9</label>
						    <input type="radio" name="kostar" id="p10" value="10"><label for="p10">10</label>
						  </span>
						  <output for="kostar"><b> </b>점</output>
						</span>
						<br>
					제목 <input type="text" name="title" size="100" placeholder="제목을 입력하세요." required oninvalid="this.setCustomValidity('제목을 입력하지 않았습니다!')" oninput="setCustomValidity('')" style="resize:none" >
					<p>
					<textarea name="comments" rows="10" cols="107" placeholder="리뷰 내용을 입력하세요."  required oninvalid="this.setCustomValidity('내용을 입력하지 않았습니다!')" oninput="setCustomValidity('')" style="resize: none"></textarea>
					</p>
				</div>
				</fieldset>
				<input type="reset" value="입력초기화"> 
		 		<input type="submit" value="리뷰등록" >
			
				</form>
				
	
	</div>



</body>
</html>