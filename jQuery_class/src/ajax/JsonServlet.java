package ajax;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.json.JSONObject;

import member.service.MemberService;
import member.vo.Member;

/**
 * Servlet implementation class JsonServlet
 */
@WebServlet("/ajax/JsonServlet")
public class JsonServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// 1. 요청파라미터 조회
		request.setCharacterEncoding("UTF-8");
		String id = request.getParameter("id");
		
		// 2. 비지니스 로직 처리 => Model  호출
		MemberService service = MemberService.getInstance();
		Member member = service.getMemberById(id);
		
		// 3. 응답처리 => View 호출
		response.setContentType("text/html;charset=UTF-8");
		response.setHeader("cashe-control", "no-store");
		PrintWriter out  = response.getWriter();
		// JSON 문자열로 변화해서 클라이언트에게 출력!
		//	-> Javascript 객체로 변환 가능한 문자열
		JSONObject obj = new JSONObject(member);
		out.println(obj);
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
