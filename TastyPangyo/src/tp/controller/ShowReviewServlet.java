package tp.controller;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import tp.service.impl.ReviewServiceImpl;

public class ShowReviewServlet extends HttpServlet{
	/**
	 * 한개의 선택한 리뷰 상세보기
	 */
	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		req.setCharacterEncoding("UTF-8");
	
		// 요청 파라미터 조회
		int reviewNo = Integer.parseInt(req.getParameter("reviewNo"));
		// 일반모드인지 관리모드(관리자, 회원)인지 알기위해 common으로 넘어온 값(true)이 있는지 체크
		try{
			// 일반모드 (맛집 찾기 모드) : REQUEST 속성으로 common=true등록
			String common = req.getParameter("common");
			req.setAttribute("common", common);
		}catch(Exception e){
			// 일반모드아님 REQUEST 속성으로 common=false등록
			req.setAttribute("common", "false");
		}
		
		//비지니스 로직 처리 후 결과 REQUEST속성으로 등록
		ReviewServiceImpl rms = ReviewServiceImpl.getInstance();
		req.setAttribute("review", rms.selectReviewByNo(reviewNo));	
		
		
		req.getRequestDispatcher("/review/output.jsp").forward(req, resp);
		
	}
	

}
