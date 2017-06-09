<%@page import="java.util.Date"%>
<%@page import="tp.vo.Member"%>
<%@ page contentType="text/html;charset=UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<<script type="text/javascript">
function popupAddress(){
	/*
	**팝업 띄우기 : window.open("URL","띄울 창 이름","창 옵셩")
		- url : 새창이 떴을 때 보여줄 화면 URL
		- 띄울 창 이름 : 창 이름 지정한 경우 -> 같은 이름의 창이 존재하면 그 창을 이용하고 같은 이름의 창이 없으면 새창 띄움
					창 이름 지정 안한 경우 -> 무조건 새창 띄움
		- 창 옵션 : 넓이 높이 등 설정, 여러 설정을 할 때는','로 구분
	*/
	window.open("/javascript_class/javascript/06_window_popup.jsp",
			"address",
			"toolbar=1, location=1, status=1, menubar=1, scrollbar=1, resizable=1, directories=1, width=800px, height=500px, top=10, left=10")
	
	// 미니플젝 리뷰 작성 창 띄울 때 쓴거 : window.open('/TastyPangyo/review/register_form.jsp',
	//								'_blank',
	//								'toolbar=1, location=1, status=1, menubar=1, scrollbar=1, resizable=1, directories=1, width=800px, height=500px, top=10, left=10')
}
</script>



<h3>리뷰목록</h3>
	<!-- 맛집 상세 페이지에서 보여줄 리뷰리스트 -->


<div class="list_top" style="width: 1200px; text-align:right" >


	<c:if test="${ sessionScope.login != null and sessionScope.login.memberId != 'admin' }">
		<form action="">
		<input
			type="button" value="리뷰작성" style="align: left" onClick="window.open('/TastyPangyo/review/register_form.jsp','_blank','toolbar=1, location=1, status=1, menubar=1, scrollbar=1, resizable=1, directories=1, width=800px, height=500px, top=10, left=10')">
		
		</form>
		</c:if>
	


</div>


	
<!-- 리뷰테이블 -->
<div>
		<form action="/TastyPangyo/review/remove" method="post">
			<!-- 관리모드를 위한 폼 -->
	
			<table border="1" align="center">
				<thead>
					<tr>
						<th width="50px">NO</th>
						<th width="100px">식당명</th>
						<th width="100px">별점</th>
						<th width="500px">제목</th>
						<th width="150px">작성자</th>
						<th width="200px">작성일</th>
					</tr>
				</thead>
				
				<tbody>
					<c:forEach items="${ requestScope.selectRes.reviews }" var="review">
						<tr>
							<td>${ review.reviewNo }</td>
							<td>${ review.restaurantName }</td>
							<td>${ review.kostar }</td>
							<td><a
								href="/TastyPangyo/review/show?reviewNo=${ review.reviewNo }&common=true">${ review.title }</a>
							</td>
							<td>${ review.memberId }</td>
							<td><fmt:formatDate value="${ review.registeredDate }"
									pattern="yyyy-MM-dd HH:mm:ss" /></td>
						</tr>

					</c:forEach>
				</tbody>
			</table>

		</form>

</div>

