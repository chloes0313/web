package tp.controller;

import java.io.IOException;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.Enumeration;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import tp.service.impl.ReviewServiceImpl;
import tp.vo.Member;

/**
 * 리뷰 조회 서블릿
 * 
 * @author KOSTA
 *
 */
public class SelectReviewServlet extends HttpServlet {

   @Override
   protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
      doPost(req, resp);
   }


   @Override
   protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {

      req.setCharacterEncoding("utf-8");
      HttpSession session = req.getSession();

      Member member = (Member)session.getAttribute("login");

      // 1. 요청 파라미터 조회
      ReviewServiceImpl rms = ReviewServiceImpl.getInstance();
      Enumeration<String> s = req.getParameterNames();
      String reqs = null;
      String keyword = null;
      String param = null;
      String common = null;
      
   // 일반모드인지 관리모드(관리자, 회원)인지 알기위해 common으로 넘어온 값(true)이 있는지 체크
   		try{
   			// 일반모드 (맛집 찾기 모드) : REQUEST 속성으로 common=true등록
   			common = req.getParameter("common");
   			req.setAttribute("common", common);
   		}catch(Exception e){
   			// 일반모드아님 REQUEST 속성으로 common=false등록
   			req.setAttribute("common", "false");
   		}
      
      
      try{   // 파라미터가 없을때 익셉션 발생 체크
         
         // System.out.println(param); // 로그
         while(s.hasMoreElements()){
            param = s.nextElement();  
            if(param.equals("req")){
               reqs = req.getParameter(param);
               req.setAttribute("req", reqs); 
            }else{
               keyword = req.getParameter(param);
               req.setAttribute("keyword", keyword);
            }
         }
         
        
         

         

         //공백입력 null 체그
         /*if(keyword == null || keyword.trim().isEmpty()){
            req.setAttribute("keyword", "*입력값이 없습니다!");
            req.getRequestDispatcher("/review/list.jsp").forward(req, resp);
         }*/
         // 비지니스로직처리
      

         if (member==null || !member.getMemberId().equals("admin") ) { //일반회원일때는 회원아이디로 작성된 것만 보여줌 
            req.setAttribute("reviews", rms.selectReviewByMemberId(keyword));
         } else {
            switch (param) {
      
            case "allReviews":
               req.setAttribute("reviews", rms.selectAllReview(keyword));

               break;
            case "title":
               req.setAttribute("reviews", rms.selectReviewByTitle(keyword));
               break;
            case "comments":
               req.setAttribute("reviews", rms.selectReviewByComments(keyword));
               break;
            case "memberId":
               req.setAttribute("reviews", rms.selectReviewByMemberId(keyword));
               break;
            case "reviewNo":
               req.setAttribute("reviews", rms.selectReviewByNo(Integer.parseInt(keyword)));
               break;
            case "year":
            case "month":
            case "day":
               Date registeredDate = new Date(Integer.parseInt(req.getParameter("year")),
                     Integer.parseInt(req.getParameter("month")), Integer.parseInt(req.getParameter("day")));
               keyword = new SimpleDateFormat("yyyy-MM-dd").format(registeredDate);
               // System.out.println(registeredDate); //로그
               req.setAttribute("reviews", rms.selectReviewByRegisteredDate(registeredDate));
               break;
            default: // 검색 값 및 정렬조건 없이 리뷰 목록 조회할 떄

               req.setAttribute("reviews", rms.selectAllReview("registered_date"));
               req.getRequestDispatcher("/review/list.jsp").forward(req, resp);
            }
         }
         // 검색어를 request 속성에 저장 (응답 화면에 보여주기 위해)
         
         
         
      }catch(Exception e){
         req.setAttribute("reviews", rms.selectAllReview("registered_date"));
         
      }
      // 3. 요청디스패치
      
      if(common.equals("true")){
    	  req.getRequestDispatcher("/review/list_test.jsp").forward(req, resp);
      }else{
      req.getRequestDispatcher("/review/list.jsp").forward(req, resp);
      }
   }
}
