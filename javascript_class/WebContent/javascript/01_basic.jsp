<%@ page contentType="text/html; charset=UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<script type="text/javascript">
document.write(1+2);
</script>
<script type="text/javascript">
	//한줄주석
	/*
	블럭 주석
	Javascript는 변수 선언할 때 var 키워드를 사용
	*/
	var name = "성은영"
</script>

HTML입니다. <br>
이름 : <script type="text/javascript">document.write(name);</script>
<hr>
<script>

document.write("Javascript도 for문이 있어용<br>");
for(var i = 1; i <= 10; i++){
	document.write(i+". 안녕!!<br>")
}
</script>
<script src="/javascript_class/javascript/script.js"></script>
</body>
</html>















