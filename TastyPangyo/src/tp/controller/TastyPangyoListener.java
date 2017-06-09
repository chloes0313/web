package tp.controller;

import java.io.IOException;
import java.util.ArrayList;
import java.util.List;

import javax.servlet.ServletContext;
import javax.servlet.ServletContextEvent;
import javax.servlet.ServletContextListener;

import tp.service.impl.RestaurantServiceImpl;
import tp.service.impl.ReviewServiceImpl;
import tp.vo.Restaurant;
import tp.vo.Review;

public class TastyPangyoListener implements ServletContextListener{

   @Override
   public void contextDestroyed(ServletContextEvent event) {
      
   }

   @Override
   public void contextInitialized(ServletContextEvent event) {
      ServletContext context = event.getServletContext();
      List<Restaurant> list = new ArrayList<Restaurant>();
      

      context.setAttribute("hitsTop5", list);
      context.setAttribute("kostarTop5", list);
      
   }


}