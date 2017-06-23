package com.chloes.controller;

import java.io.IOException;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import com.chloes.service.MemberService;
import com.chloes.vo.Member;

@Controller
@RequestMapping("/member/")
public class MemberController {
	@Autowired
	private MemberService service;
	/*
	 * @ResponseBody :  handler 메서드가 리턴하는 값을 문자열로 만들어 HTTP 응답 body에 넣어 사용자에게 응답하도록 선언하는 Annotation
	 * 		- 선언위치 : handler메서드 선언부나  handler메서드의 return타입 앞 선언
	 * 
	 * <mvc:annotation-driven> 
	 * 	- @ResponseBody의 리턴값을 적당한 형태로 변환하는 converter(변환기)들이 등로된다
	 * 	- Jackson JSON 라이브러리가 classpath상에 있으면 MappingJacsonHttpMessageConverter가 추가된다.
	 * 			=>VO,Collection,배열을 JSON으로 변환하는 변환기
	 * 		VO -> { } , List -> [ ] 형태로 변환
	 */
	@RequestMapping(value="searchById", produces="text/html;charset=UTF-8")
	@ResponseBody
	public String searchById(String id) throws IOException{
		System.out.println(id);
		Member member = service.getMemberById(id);
		System.out.println(member);
		String result = String.format("ID: %s<br>회원명: %s<br>나이: %s<br>", member.getId(), member.getName(), member.getAge());
		return result;
	}
	
	
	@RequestMapping("searchById_json")
	@ResponseBody
	public Member searchById2(String id){
		Member member = service.getMemberById(id);
		System.out.println(member);
		return member;
	}

	@RequestMapping("list")
	@ResponseBody
	public List list(){
		List<Member> list = service.getMemberList();
		System.out.println(list);
		return list;
	}
}
