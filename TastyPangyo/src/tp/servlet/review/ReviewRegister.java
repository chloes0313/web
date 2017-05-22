package tp.servlet.review;

import java.io.IOException;
import java.util.Date;
import java.text.SimpleDateFormat;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import tp.vo.Member;

public class ReviewRegister extends HttpServlet{

	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		HttpSession session = req.getSession();
		Member member = (Member)session.getAttribute("member");
		
		
		
		Date date = new Date();
		String currentTime = new SimpleDateFormat("yyyy-MM-dd hh:mm:ss").format(date);
		
		String title = req.getParameter("title");
		String	comments = req.getParameter("comments");
		String kostar = req.getParameter("kostar");
	}
	 

}
