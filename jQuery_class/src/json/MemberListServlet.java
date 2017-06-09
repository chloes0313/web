package json;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.ArrayList;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.json.JSONArray;

import member.service.MemberService;
import member.vo.Member;

/**
 * Servlet implementation class MemberListServlet
 */
@WebServlet("/json/MemberListServlet")
public class MemberListServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// 1. 요청 파라미터 조회
		request.setCharacterEncoding("UTF-8");
		/* 받아올 값 없어용 */
		
		// 2. 비지니스 로직 처리
		MemberService service = MemberService.getInstance();
		ArrayList<Member> memberList = service.getMemberList();
		JSONArray jArr = new JSONArray(memberList);
		//System.out.println(jArr);	// log
		
		// 3. 응답처리 
		response.setContentType("text/html;charset=UTF-8");
		response.setHeader("cashe-control", "no-store");
		PrintWriter out = response.getWriter();
		out.println(jArr);
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
