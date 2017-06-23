package com.chloes.validation.annotation;

import java.util.Date;

import javax.validation.constraints.Size;

import org.hibernate.validator.constraints.Email;
import org.hibernate.validator.constraints.Length;
import org.hibernate.validator.constraints.NotEmpty;
import org.hibernate.validator.constraints.Range;
import org.springframework.format.annotation.DateTimeFormat;

/*
 * @ModelAttribute로 사용할 클래스
 * 	-> VO로 안쓰고 따롼드는 이유 : Annotation을 이용한 요청파라미터 검증을 처리하기 위해
 *  Annotation을 이용해 각 property에 요청파라미터가 들어갈 때 어떤 것을 검사해야 하는지 지정(선언)
 *  	- 선언 위치는 instance변수나 ㄴetter메서드에 
 *  
 *  *Annotation 공통 속성 : message - 에러메시지를 등록 ( p.333,334)  
 *  
 *  properties 파일의 에러메시지를 사용할 경우는 message속성 생략
 *   1) Annotation명.@ModelAttribute속성명.property명
 *   2) Annotation명.property명
 *   3) Annotation명
 */

public class MemberForm {
	@NotEmpty(message="아이디를 넣으세여!!")
	@Length(min = 5, max=20) //글자수
	private String id;
	@NotEmpty
	private String password;
	@NotEmpty
	private String name;
	@NotEmpty
	@Email(message="이메일 형식이 아닙니다요")
	private String email;
//	@Min(value=0)/*value 생략가능*/
//	@Max(100)
	@Range(min=0, max=100, message="나이는 0에서 100사이만 입력가능합니다.")
	private int age;
	@DateTimeFormat(pattern="yyyy-MM-dd")
	private Date birthday;
	private String blogUrl;
	@Size(max=3, min=1)
	private String[] interest;
	
	
	
	public String getId() {
		return id;
	}
	public void setId(String id) {
		this.id = id;
	}
	public String getPassword() {
		return password;
	}
	public void setPassword(String password) {
		this.password = password;
	}
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	public String getEmail() {
		return email;
	}
	public void setEmail(String email) {
		this.email = email;
	}
	public int getAge() {
		return age;
	}
	public void setAge(int age) {
		this.age = age;
	}
	public Date getBirthday() {
		return birthday;
	}
	public void setBirthday(Date birthday) {
		this.birthday = birthday;
	}
	public String getBlogUrl() {
		return blogUrl;
	}
	public void setBlogUrl(String blogUrl) {
		this.blogUrl = blogUrl;
	}
	public String[] getInterest() {
		return interest;
	}
	public void setInterest(String[] interest) {
		this.interest = interest;
	}
	
	
	
}
