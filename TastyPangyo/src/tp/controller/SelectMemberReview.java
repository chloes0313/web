package tp.controller;

import java.io.IOException;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.Enumeration;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import tp.service.impl.ReviewServiceImpl;

/**
 * 리뷰 조회 서블릿
 * @author KOSTA
 *
 */
public class SelectMemberReview extends HttpServlet{

	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		doPost(req, resp);
	}

	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		req.setCharacterEncoding("utf-8");
		// 1. 요청 파라미터 조회
		String id = req.getParameter("id");

		// 비지니스로직처리
		ReviewServiceImpl rms = ReviewServiceImpl.getInstance();
		
		req.setAttribute("reviews", rms.selectReviewByMemberId(id));
		req.setAttribute("id",id);
		
		
		req.getRequestDispatcher("/review/list.jsp").forward(req, resp);
		
	}
	
	
	
}
