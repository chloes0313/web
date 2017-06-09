<%@ page contentType="text/html;charset=UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>

<!------------------------------------------ 스타일 적용 고정 link ------------------------------------------>

<link rel="stylesheet" href="/TastyPangyo/menu.css">

</head>
<!------------------------------------------ 상단 및 메뉴 고정 include ------------------------------------------>
   <!-- 마이페이지(/member/myPage.jsp), 관리모드(/member/memberSelect.jsp) 일때 경로 : /manage/menu.jsp -->
   <!-- 기본페이지(intro.jsp)에서 경로 : /common/menu.jsp -->
<jsp:include page="/manage/menu.jsp"/>

<!---------------------------------------내용 설정-------------------------------------------->
   <div id="div_con">
      <div class="content1">



   <h1>맛집 등록(TastyPanGyo)</h1>


      <form action="/TastyPangyo/insertRes" method="post" enctype="multipart/form-data">

      맛집 이름 : <input type = "text" name="resName" required="required"><br><br>
            전화번호 : <input type="text" name="resTelNum" required="required"><br><br>
      
      맛집 위치 :<br> 삼환하이펙스A<input type = "radio" name="location" value="삼환하이펙스A" checked="checked"><br>
               삼환하이펙스B<input type = "radio" name="location" value="삼환하이펙스B" ><br>
               유스페이스1<input type = "radio" name="location" value="유스페이스1"><br>
               유스페이스2<input type = "radio" name="location" value="유스페이스2" ><br>
              H스퀘어<input type = "radio" name="location" value="H스퀘어" ><br><br>
      
      음식 종류 : <br>한식<input type = "radio" name="foodCategory" value="한식" checked="checked"><br>
               양식<input type = "radio" name="foodCategory" value="양식" ><br>
               중식<input type = "radio" name="foodCategory" value="중식"><br>
               일식<input type = "radio" name="foodCategory" value="일식" ><br>
              기타<input type = "radio" name="foodCategory" value="기타" ><br><br>
      
      맛집 메뉴 : <textarea rows="10" cols="30" name="menu" placeholder="메뉴를 입력해주세요"></textarea><br><br>
      
      맛집 소개 : <textarea rows="10" cols="30" name="introduction" placeholder="소개글을 입력해 주세요"></textarea><br><br>

      
      사진 첨부 :<input type="file" name="image" multiple width="100"> 
   
      <br>
      <input type="submit" value="등록">       
      </form>
      <br><br><br><br>
   </div>
   </div>




<!---------------------------------------웹페이지 소개 내용 고정 include ---------------------------------------------->
   
<jsp:include page="/footer.jsp"/>
</html>