<%@ page contentType="text/html; charset=UTF-8" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">

<style>
	div { 
		width:60px; height:40px; margin:10px;
        border:2px solid blue  ; 
	}
	.lightblue { 
		background:lightblue; color:white;
	}
</style>
<script type="text/javascript" src="/jQuery_class/scripts/jquery-3.2.1.js"></script>
<script type="text/javascript">
$(document).ready(function(){
	// div들							 div중 홀수 index									 	 그 중 0번 index 요손
	//$("div").css("color","bisque").filter(":odd").css("background-color", "cadetblue").eq(0).css("text-align","center")
	//																				  .end().css("color","red");
																						//end()마지막 탐색 무효화:eq(0)무효
	

	$(".han").addClass("lightblue").not("p").on("click",function(){
		alert($(this).text());
	}).css("cursor", "pointer");
});
</script>
</head>










 <body>
   <div>1번</div>
   <div>2번</div>
   <div>3번</div>
   <div>4번</div>
   <div>5번</div>
   <div>6번</div>
   
   <hr>
   <div class="han" >가</div>
   <div class="han">나</div>
   <div class="han">다</div>
   <p class="han">라</p>
   
   
 </body>
</html>













