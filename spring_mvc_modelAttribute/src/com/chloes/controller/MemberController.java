package com.chloes.controller;

import javax.validation.Valid;

import org.springframework.beans.BeanUtils;
import org.springframework.stereotype.Controller;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;

import com.chloes.validation.MemberRegisterValidator;
import com.chloes.validation.annotation.MemberForm;
import com.chloes.vo.Member;

@Controller
@RequestMapping("/member/")
public class MemberController {
	
	
	//@RequestMapping("register")
	public String registerMember(@ModelAttribute Member member, BindingResult errors){
		//등록 처리
		
		// 1) 요청파라이머 조회 + 검증
		MemberRegisterValidator validator = new MemberRegisterValidator();
		validator.validate(member, errors);
		if(errors.hasErrors()){	// errors에 오류가 1개라도 등록되 있으면 true
			return "member/register_form";	// 등록폼으로 이동
		}
		
		// 2) 비지니르 로직 처리 => Model호출 (joinMember(Member member)
		System.out.println(member);
		
		// 3) 응답 처리 => View호출
		return "member/register_success";
	}

	@RequestMapping("register")								//Annotation으로 선언해서 요청파라미터 검증할거야 알려줌
	public String registerMember2(@ModelAttribute("member") @Valid MemberForm memberForm, BindingResult errors){
		// 요청파라미터 검증 끝
		if(errors.hasErrors()){	// errors에 오류가 1개라도 등록되 있으면 true
			return "member/register_form";	// 등록폼으로 이동
		}
		//비즈니스 로직 처리 - memberService.join(Member member)
		//	-MemberForm(요청파라미터 조회+검증용) ---카피---> Member(실제 회원 데이터 타입)
		Member member = new Member();
		System.out.println(member);
		// 	-BeanUtils.copyProperties(source, target);
		BeanUtils.copyProperties(memberForm, member);
		System.out.println(member);
		return "member/register_success";
	}
}
