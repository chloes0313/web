package main;

import org.springframework.context.ApplicationContext;
import org.springframework.context.support.ClassPathXmlApplicationContext;

import spring.vo.Person;

public class TestDI2 {
	public static void main(String[] args){
		
		ApplicationContext ctx = new ClassPathXmlApplicationContext("spring/config/applicationContext2.xml");
		
		Person per = (Person)ctx.getBean("per1");
		System.out.println(per);
		
		per = (Person)ctx.getBean("per2");
		System.out.println(per);
		
		per = (Person)ctx.getBean("per3");
		System.out.println(per);
		
		per = (Person)ctx.getBean("per4");
		System.out.println(per);
		
		per = (Person)ctx.getBean("per5");
		System.out.println(per);
		
	}
}
