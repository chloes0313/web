package com.chloes.service;

import java.util.List;

import com.chloes.vo.Member;

public interface MemberService {

	public Member getMemberById(String id);
	
	public List<Member> getMemberList();
}
