package spring.aop.main;

import org.springframework.context.ApplicationContext;
import org.springframework.context.support.ClassPathXmlApplicationContext;

import spring.aop.model.service.CustomerService;
import spring.aop.vo.Customer;

public class CustomerMain {
	public static void main(String[] args) {
		ApplicationContext ctx 
				= new ClassPathXmlApplicationContext("spring/aop/config/applicationContext.xml");
		CustomerService service = (CustomerService)ctx.getBean("customerService");
		
		service.registerCustomer(new Customer("id-1", "1212", "윤희수", 22));
		
		service.modifyCustomer(new Customer("id-1", "2222", "윤희수", 22));
		
		service.searchAllCustomer();
		
		service.serachCustomerById("id-1");
		System.out.println("main 종료");
	}
}
