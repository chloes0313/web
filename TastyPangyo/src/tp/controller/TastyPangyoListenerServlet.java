package tp.controller;

import java.io.IOException;
import java.util.List;

import javax.servlet.ServletContext;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import tp.service.impl.RestaurantServiceImpl;
import tp.vo.Restaurant;

public class TastyPangyoListenerServlet extends HttpServlet{

   @Override
   protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
      req.setCharacterEncoding("UTF-8");
      ServletContext context = req.getServletContext();
      List<Restaurant> hitsTop5 = (List<Restaurant>)getServletContext().getAttribute("hitsTop5");
      List<Restaurant> kostarTop5 = (List<Restaurant>)getServletContext().getAttribute("kostarTop5");
      RestaurantServiceImpl rest;
      
      try {
          rest = RestaurantServiceImpl.getInstance();
          // 조회수순으로 조회해서 별점 TOP5에 넣기
          hitsTop5 = rest.selectAllRestaurantByHit();
          context.setAttribute("hitsTop5", hitsTop5);
          // 별점순으로 조회해서 별점TOP5에 넣기
          kostarTop5 = rest.selectRestaurantIdByAvgKostar();
          context.setAttribute("kostarTop5", kostarTop5);
       } catch (IOException e) {
          e.printStackTrace();
       }
      
  

      req.getRequestDispatcher("/intro.jsp").forward(req, resp);
   }   
   

}