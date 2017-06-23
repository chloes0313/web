package domain.controller;

import java.util.HashMap;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;
import org.springframework.web.servlet.View;
import org.springframework.web.servlet.view.InternalResourceView;

import domain.service.GreetingService;


@Controller	//<bean class="domain.controller.GreetingController" name="greetController"/>
@RequestMapping("/greeting/")	// 컨트롤러의 모든 메서드의 URL 앞에 붙일 공통된 URL 경로 지정
public class GreetingController {
	@Autowired
	private GreetingService service;
	
//	@RequestMapping("/greeting/hello.do")
	@RequestMapping("hello")
	public String hello(){
		System.out.println("hello() 실행");
//		return "/WEB-INF/view/greeting/response.jsp";
		return "greeting/response";	// View Name (뷰 정보)
	}
	
	@RequestMapping("greeting1")
	public ModelAndView greeting(){
		System.out.println("greeting()");
	
		String msg = service.getGreeting();
																		//requestScope에 "result"라는 이름의 Attribute에 msg 저장
//		return new ModelAndView("/WEB-INF/view/greeting/response.jsp", "result", msg);
		return new ModelAndView("greeting/response","result", msg);
	}
	
	@RequestMapping("greeting2")
	public ModelAndView greeting(String name){	// name : 요청 파라미터로 받을 변수
	      System.out.println("greeting(String)");
	      String msg = service.getGreeting(name);
//	      return new ModelAndView("/WEB-INF/view/greeting/response.jsp", "result", msg);
	      return new ModelAndView("greeting/response","result", msg);
	}
	
	
	
	@RequestMapping("greeting3")
	// Controller의 로직을 처리할 메서드림을 선언 : 속성의 Value - 요청 URL
	public ModelAndView greeting(String name, int age){
		System.out.println("greeting(String, int)");
	    String msg = service.getGreeting(name, age);
	    //ModelAndView ->  응답 URL -> View	 /	 View에 전달할 값 : name-value 쌍으로("result", msg)
	    return new ModelAndView("/WEB-INF/view/greeting/response.jsp", "result", msg);
	}
	
	 
	@RequestMapping("greeting4")
	public View greeting4(){
		System.out.println("greeting4");
		InternalResourceView view = new InternalResourceView("/WEB-INF/view/greeting/response.jsp");
		Map map = new HashMap();
		map.put("result", service.getGreeting());
		view.setAttributesMap(map);
		
		return view;
	}

}
