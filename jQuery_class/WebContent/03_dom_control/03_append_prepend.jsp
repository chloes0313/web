<%@ page contentType="text/html; charset=UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<script type="text/javascript" src="/jQuery_class/scripts/jquery-3.2.1.js"></script>
<script type="text/javascript">
var cnt =1;
$(document).ready(function(){
	$("#appendBtn").on("click", function(){
		// div#layer의 마지막 자식 노드로 DOM노드 추가
		// $("추가할 부모노드셀렉터").append("붙일내용");
		$("div#layer").append("<br>안녕하세요. "+cnt++ +"<br>");
		// $("붙일내용").appendTo("추가할 부모노드 셀렉터");
		$("<u>Hello : "+cnt++ +"</u>").appendTo("div#layer");
	}); //end of appendBtn
	
	$("#prependBtn").on("click", function(){
		$("div#layer").prepend("<i>안녕하세용용용!prepend("+ cnt++ +")</i><br>");
		$("<b>prependTo야~~"+ cnt++ +"</b><br>").prependTo("div#layer");
	});	//end of prependBtn
	
	$("#moveBtn").on("click", function(){
		//$("div#layer").append("i")	//"i"라는 문자열 가진 Text Node를 붙임
		//$("div#layer").append($("i"));
		$("i").appendTo("div#layer");
	});
	
	$("#clearBtn").on("click", function(){
		// 삭제
		//$("#tbody").remove();	// select된  Node 리스트 제거
		//$("#tbody").empty();	// select된 Node 리스트의 자식 노드들 제거
		$("#tbody").empty().append("<tr><td>새로넣기</td><td>지롱</td><td>3번째 td</td></tr>");
	});
});
	


</script>
<style type="text/css">
table{
	width: 500px;
}
</style>
</head>
<body>

<div id="layer" style="width: 500px; height: auto; min-height:50px; border: 1px dashed blue; margin-bottom: 10px;">기준점</div>
<i><b>이것은 옮겨질 예정입니다.</b></i><br>
<i><b>이것은 옮겨질 예정입니다.</b></i><br>
<i><b>이것은 옮겨질 예정입니다.</b></i><br>
<i><b>이것은 옮겨질 예정입니다.</b></i><br>
<i><b>이것은 옮겨질 예정입니다.</b></i><br>
<hr>
<button id="appendBtn">append예제</button>
<button id="prependBtn">prepend예제</button>
<button id="moveBtn">dom node 옮기기</button>
<hr>
<p>
<table border='1'>
<thead>
	<tr>
		<td>ID</td>
		<td>이름</td>
		<td>나이</td>
	</tr>
</thead>
<tbody id="tbody">
	<tr>
		<td>id-a</td>
		<td>홍길동</td>
		<td>20</td>
	</tr>
	<tr>
		<td>id-b</td>
		<td>이순신</td>
		<td>30</td>
	</tr>	
	<tr>
		<td>id-c</td>
		<td>김유신</td>
		<td>25</td>
	</tr>			
</tbody>
<tfoot>
	<tr>
		<td colspan='3'><button id="clearBtn">내용 삭제</button></td>
	</tr>
</tfoot>
</table>
</body>
</html>