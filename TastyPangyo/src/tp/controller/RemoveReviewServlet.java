package tp.controller;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import tp.service.impl.ReviewServiceImpl;


public class RemoveReviewServlet extends HttpServlet{


	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		req.setCharacterEncoding("utf-8");
		HttpSession session = req.getSession();
		// 1. 요청파라미터 조회
		String[] noArr = req.getParameterValues("reviewNo");
		String memberId = req.getParameter("memberId");
		// 2. 비지니스 로직 처리
		ReviewServiceImpl rms = ReviewServiceImpl.getInstance();
		rms.deleteReviewSelected(noArr);
		
		session.setAttribute("reviews", rms.selectReviewByMemberId(memberId));
		resp.sendRedirect("../review/list.jsp");
		
	}
   

}