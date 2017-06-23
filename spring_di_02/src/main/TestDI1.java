package main;

import org.springframework.context.ApplicationContext;
import org.springframework.context.support.ClassPathXmlApplicationContext;

import spring.vo.Address;
import spring.vo.Person;

public class TestDI1 {
	public static void main (String[] args){
		//Spring Container 객체 생성
		ApplicationContext ctx = new ClassPathXmlApplicationContext("spring/config/applicationContext.xml");
		
		
		//bean 받아오기
		// 1. spring.vo.Address	
		Address address = (Address)ctx.getBean("address1");
		System.out.println(address);	// no-arg이므로 값은 null로 생성됨
		
		address = (Address)ctx.getBean("address2");
		System.out.println(address);
		
		address = (Address)ctx.getBean("address3");
		System.out.println(address);
		
		address = (Address)ctx.getBean("address4");
		System.out.println(address);
		
		
		// 2. spring.vo.Person
		Person person = (Person)ctx.getBean("person1");
		System.out.println(person);
		
		person = (Person)ctx.getBean("person2");
		System.out.println(person);
		
		person = (Person)ctx.getBean("person3");
		System.out.println(person);
		
		person = (Person)ctx.getBean("person4");
		System.out.println(person);
		
		
		person = (Person)ctx.getBean("person5");
		System.out.println(person);
		
	}

}
