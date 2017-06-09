package tp.controller;

import java.io.IOException;
import java.util.Date;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import tp.service.impl.ReviewServiceImpl;
import tp.vo.Member;
import tp.vo.Review;

public class RegisterReviewServlet extends HttpServlet{

	
	
   @Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
	   doPost(req, resp);
   }

@Override
   protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
      req.setCharacterEncoding("utf-8");
      HttpSession session = req.getSession();
     
      //-------------------------------------------------------------
      // 1. 요청 파라미터 조회
      Review review = (Review)req.getAttribute("review");
      review.setRegisteredDate(new Date());
      String str = review.getComments();
      
      str.replace("\r\n", "<br>");
      // 2. 비지니스로직 처리
      ReviewServiceImpl rms = ReviewServiceImpl.getInstance();
      rms.addReview(review);
      
      session.setAttribute("reviews", rms.selectAllReview("registered_date"));
      
      resp.sendRedirect("../selectResById?restaurantId="+review.getRestaurantId()+"&common=yes");
   }
    

}