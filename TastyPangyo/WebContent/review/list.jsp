<%@page import="java.util.Date"%>
<%@page import="tp.vo.Member"%>
<%@ page contentType="text/html;charset=UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>

<!-- 세션으로 받은 레스토랑 정보, 로그인 정본로 화면 리스트 뿌려주기 -->
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
		<h3>리뷰목록</h3>
		

		<!-- 전체목록 조회 -->
		<c:choose>
			<c:when test="${ requestScope.req == 'allReviews'}">
				<form action="/TastyPangyo/review/select" method="post">
					<input type="hidden" name="req" value="allReviews"> 전체목록 <select
						name="allReviews">
						<option value="registered_date">최신등록순</option>
						<option value="review_no">리뷰번호순</option>
						<option value="member_id">작성자순</option>
					</select> <input type="submit" value="리뷰검색"><br>
				</form>
			</c:when>



			<c:when test="${requestScope.req == 'title'}">
				<form action="/TastyPangyo/review/select" method="post">
					<input type="hidden" name="req" value="title"> 제목으로 찾기 <input
						type="search" name="title" placeholder="제목 일부를 입력하세요" required
						oninvalid="alert('값을 입력하세요!')"> <input type="submit"
						value="리뷰검색"><br>
				</form>

			</c:when>

			<c:when test="${requestScope.req == 'comments'}">
				<form action="/TastyPangyo/review/select" method="post">
					<input type="hidden" name="req" value="comments"> 내용으로 찾기 <input
						type="search" name="comments" placeholder="내용 일부를 입력하세요" required
						oninvalid="alert('값을 입력하세요!')"> <input type="submit"
						value="리뷰검색"><br>
				</form>
			</c:when>

			<c:when test="${requestScope.req == 'memberId'}">
				<form action="/TastyPangyo/review/select" method="post">
					<input type="hidden" name="req" value="memberId"> 작성자로 찾기 <input
						type="search" name="memberId" placeholder="아이디를 입력하세요" required
						oninvalid="alert('값을 입력하세요!')"> <input type="submit"
						value="리뷰검색"><br>
				</form>
			</c:when>

			<c:when test="${requestScope.req == 'registeredDate'}">
				<form action="/TastyPangyo/review/select" method="post">
					<input type="hidden" name="req" value="registeredDate">
					작성일로 찾기
					<!-- 년 -->
					<select name="year">
						<option value="117">2017</option>
						<option value="116">2016</option>
						<option value="115">2015</option>
						<option value="114">2014</option>
					</select>
					<!-- 월 -->
					<select name="month">
						<option value="0">1</option>
						<option value="1">2</option>
						<option value="2">3</option>
						<option value="3">4</option>
						<option value="4">5</option>
						<option value="5">6</option>
						<option value="6">7</option>
						<option value="7">8</option>
						<option value="8">9</option>
						<option value="9">10</option>
						<option value="10">11</option>
						<option value="11">12</option>
					</select>
					<!-- 일 -->
					<select name="day">
						<option value="1">1</option>
						<option value="2">2</option>
						<option value="3">3</option>
						<option value="4">4</option>
						<option value="5">5</option>
						<option value="6">6</option>
						<option value="7">7</option>
						<option value="8">8</option>
						<option value="9">9</option>
						<option value="10">10</option>
						<option value="11">11</option>
						<option value="12">12</option>
						<option value="13">13</option>
						<option value="14">14</option>
						<option value="15">15</option>
						<option value="16">16</option>
						<option value="17">17</option>
						<option value="18">18</option>
						<option value="19">19</option>
						<option value="20">20</option>
						<option value="21">21</option>
						<option value="22">22</option>
						<option value="23">23</option>
						<option value="24">24</option>
						<option value="25">25</option>
						<option value="26">26</option>
						<option value="27">27</option>
						<option value="28">28</option>
						<option value="29">29</option>
						<option value="30">30</option>
						<option value="31">31</option>
					</select> <input type="submit" value="리뷰검색"><br>

				</form>
			</c:when>
		</c:choose>
	

		<!-- 리뷰테이블 -->

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
						<!-- 관리자만 볼수있게 !!!! -->
						<c:if test="${ sessionScope.login != null }">
							<th width="50px">선택</th>
							<!-- 관리모드에서 삭제를 위한 체크박스 -->
						</c:if>
						<c:if
							test="${ sessionScope.login.memberId != 'admin'  and sessionScope.login != null }">
							<th width="60px">수정</th>
						</c:if>
					</tr>
				</thead>
				<c:if test="${ sessionScope.login != null  }">
					<tfoot>
						<tr>
							<td colspan="8" style="text-align: center"><input
								type="hidden" name="deleteCk" value="yes"> <input
								type="submit" value="삭제" onclick="confirm('선택한 리뷰를 삭제합니다')">
							</td>
						</tr>
					</tfoot>
				</c:if>
				<tbody>
					<c:forEach items="${ requestScope.reviews }" var="review">
						<tr>
							<td>${ review.reviewNo }</td>
							<td>${ review.restaurantName }</td>
							<td>${ review.kostar }</td>
							<td><a
								href="/TastyPangyo/review/show?reviewNo=${ review.reviewNo }">${ review.title }</a>
							</td>
							<td>${ review.memberId }</td>
							<td><fmt:formatDate value="${ review.registeredDate }"
									pattern="yyyy-MM-dd HH:mm:ss" /></td>
							<c:if test="${ sessionScope.login != null  }">
								<td style="text-align: center"><input type="checkbox"
									name="reviewNo" value="${ review.reviewNo }"></td>
							</c:if>
							<c:if
								test="${ sessionScope.login.memberId != 'admin'  and sessionScope.login != null }">
								<td style="text-align: center"><a
									href="/TastyPangyo/review/show/update-mode?reviewNo=${ review.reviewNo }&updateCk=yes"><input
										type="button" value="수정"></a></td>
							</c:if>
						</tr>

					</c:forEach>
				</tbody>
			</table>

		</form>


	</div>
</div>


<!---------------------------------------웹페이지 소개 내용 고정 include ---------------------------------------------->
	
<jsp:include page="/footer.jsp"/>
</html>
