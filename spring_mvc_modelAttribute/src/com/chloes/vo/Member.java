package com.chloes.vo;

import java.util.Arrays;
import java.util.Date;

import org.springframework.format.annotation.DateTimeFormat;

public class Member {
	private String id;
	private String password;
	private String name;
	private String email;
	private int age;
	@DateTimeFormat(pattern="yyyy-MM-dd")
	private Date birthday;
	private String blogUrl;
	private String[] interest;
	
	
	
	public Member() {
	}



	public Member(String id, String password, String name, String email, int age, Date birthday, String blogUrl,
			String[] interest) {
		this.id = id;
		this.password = password;
		this.name = name;
		this.email = email;
		this.age = age;
		this.birthday = birthday;
		this.blogUrl = blogUrl;
		this.interest = interest;
	}



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



	@Override
	public int hashCode() {
		final int prime = 31;
		int result = 1;
		result = prime * result + age;
		result = prime * result + ((birthday == null) ? 0 : birthday.hashCode());
		result = prime * result + ((blogUrl == null) ? 0 : blogUrl.hashCode());
		result = prime * result + ((email == null) ? 0 : email.hashCode());
		result = prime * result + ((id == null) ? 0 : id.hashCode());
		result = prime * result + Arrays.hashCode(interest);
		result = prime * result + ((name == null) ? 0 : name.hashCode());
		result = prime * result + ((password == null) ? 0 : password.hashCode());
		return result;
	}



	@Override
	public boolean equals(Object obj) {
		if (this == obj)
			return true;
		if (obj == null)
			return false;
		if (getClass() != obj.getClass())
			return false;
		Member other = (Member) obj;
		if (age != other.age)
			return false;
		if (birthday == null) {
			if (other.birthday != null)
				return false;
		} else if (!birthday.equals(other.birthday))
			return false;
		if (blogUrl == null) {
			if (other.blogUrl != null)
				return false;
		} else if (!blogUrl.equals(other.blogUrl))
			return false;
		if (email == null) {
			if (other.email != null)
				return false;
		} else if (!email.equals(other.email))
			return false;
		if (id == null) {
			if (other.id != null)
				return false;
		} else if (!id.equals(other.id))
			return false;
		if (!Arrays.equals(interest, other.interest))
			return false;
		if (name == null) {
			if (other.name != null)
				return false;
		} else if (!name.equals(other.name))
			return false;
		if (password == null) {
			if (other.password != null)
				return false;
		} else if (!password.equals(other.password))
			return false;
		return true;
	}



	@Override
	public String toString() {
		return "Member [id=" + id + ", password=" + password + ", name=" + name + ", email=" + email + ", age=" + age
				+ ", birthday=" + birthday + ", blogUrl=" + blogUrl + ", interest=" + Arrays.toString(interest) + "]";
	}
	
	
	

}
