package com.chloes.controller;

import java.util.Date;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.servlet.http.Cookie;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.springframework.format.annotation.DateTimeFormat;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.CookieValue;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

@Controller
@RequestMapping("/param/")
public class ParameterController {
/*	
	@RequestMapping("index")
	public String index(){
		return "index";
	}*/
	
//	@RequestMapping("/param/request")
	@RequestMapping("request")
	public String moveRequestPage(HttpServletResponse response){	//매개변수 앞에 @RequestParam 선언 생략
//		System.out.println("request페이지 이동");
		Cookie c = new Cookie("request_time", new Date()+"");
		response.addCookie(c);
//		return "/WEB-INF/view/param/request.jsp";
		return "param/request";
	}
	
	@RequestMapping("getCookie")
	// 쿠키값 하나를 저장할 매개변수 -> @CookieValue 
	public String getCookie(@CookieValue(name="request_time", defaultValue="none") String requestTime){	
		//사용자가 전송한 쿠키값을 조회
		// @CookieValue(required=false)	: 값이 있는지 체크만을 위해
		// @CookieValue(defaultValue="none") : 이후 검증이 필요할 때
		if(requestTime != null){
			System.out.println("쿠키값-resqestTime:"+requestTime);
		}
		
		return  "param/request";
	}
	
	@RequestMapping("response")
	public String response(Model model){
		//businessLogic 처리
		//model.addAttribute("result", "처리결과 값이네영");
		Map map = new HashMap();
		map.put("r1", "결과1");
		map.put("r2", "결과2");
		map.put("r3", "결과3");
		model.addAllAttributes(map);
		model.addAttribute("result", map);
		return "param/response";
	}
	
	@RequestMapping("search")
	//@RequestParam(매개)변수 - 요청 파라미터 값(value)을 넣어줄 변수 선언
	//	속성 - name : 값을 넣을 요청파라미터의 이름 지정(qustnaudrhk rkxdmf ruddn todfirrksmd)
	//		 required - 값 : true(기본)/false(넘어온 요청파라미터가 없으면 null)x
	//			 	요청파라미터 값이 없을 때 예외발생 -> HTTP 400 에러 
	// *따로 속성을 지정하지 ㅇ낳는 경우 @RequestParam 생략가능
	public ModelAndView search(@RequestParam(name="keyword") String keyword){	//요청파라미터와 매개변수가 같으면 @RequestParam 생략가능(디폴트여서)
		/*
		 * Controller
		 * 1. 요청파라미터 조외 + 검증
		 * 
		 * 2. 비지니스로직 처리 : Model 호출
		 * 
		 * 3. 응답처리 : View호출
		 */
		// 1
		if(keyword == null || keyword.trim().isEmpty()){
			return new ModelAndView("param/request", "errorMsg", "키워드를 입력하세영");
		}
		// 2
		System.out.println(keyword);
		
		// 3
		return new ModelAndView("param/response");
		
	}
	
	@RequestMapping("login")
	public String login(String id, String password, HttpSession session){
		// 1. 요청파라미터  rjawmd
		// if(id.trim().isEmpty()){}
		// 2. 로그인 처리 - 성공
		System.out.printf("로그인한 ID-%s, 패스워드-%s%n",id,password);
		//	Session Scope의 Attribute 로그인한 회원정보를 설정
		session.setAttribute("loginInfo", id);
		// 3. 응답
		return "param/response";
	}
	
	@RequestMapping("logout")
	public String logout(HttpSession session){
		session.invalidate();
		return "param/request";
	}
	
	//@RequestMapping("etc")
	// @RequestParam 변수 지정 시 같은 이름으로 여러개의 값이 넘어오는 요청 파라미터는 String[] 변수, List 변수로 받음
	// @DateTimeFormat : Date으로 변환할 문자포멧을 지정(pattern)
	//  yyyy, MM, dd, HH, mm, ss
	// 네임스페이스에서  mvc체크하고 스프링 설정파일에 <mvc:annotation-driven/> 등록
	public String etc(String name, @DateTimeFormat(pattern="yyyy-MM-dd") Date birthday, String[] hobby, Model model){
		
		//Date bd = new SimpleDateFormat("yyyy-MM-dd").parse(birthday);	// birthday를 스트링 값으로 받아서 date로 변환
		System.out.printf("이름:%s, 생일:%s, 취미개수:%d%n", name, birthday, hobby.length);
		Map map = new HashMap();
		map.put("name", name);
		map.put("birthday", birthday);
		map.put("hobbies", hobby);
		model.addAllAttributes(map);
		System.out.println(map);
		
		return "param/response";
	}
	
	@RequestMapping("etc")
	public String etc2(String name, /*요청파라미터:name*/ 	
						@DateTimeFormat(pattern="yyyy-MM-dd") Date birthday, /*요청파라미더 birthday*/
						@RequestParam List hobby){	/*요청파라미터 :hobby (->여러개의 값은 배열 혹은 List/ArrayList로 타입설정 가능 - 리스트 타입은 꼭 @RequestParam을 선언!*/
						// @RequestParam선언 안할 시 -> java.lang.IllegalArgumentException: Cannot generate variable name for non-typed Collection parameter type
		System.out.printf("hobby: %10s%n",hobby);
		return "param/response";
	}
	
	//-----------------------------------
	@RequestMapping("response1")
	public ModelAndView responseS(){
		System.out.println("response()실행");
		String msg = "요청에 응답합니다!";
		return new ModelAndView("param/response", "result", msg);
	}
	
	@RequestMapping("response2")
	public ModelAndView responseS(String name){
		System.out.println("response(name) 실행");
		String msg = name +"님의 요청에 대한 응답니다융!!!!!!!!!!!!!!!!!!!!!!!!";
		return new ModelAndView("param/response", "result", msg);
	}
	

	
	
}
