package spring.aop.main;

import org.springframework.context.ApplicationContext;
import org.springframework.context.support.ClassPathXmlApplicationContext;

import spring.aop.model.service.BusinessService;

public class TestAOP {
	public static void main(String[] args) {
		ApplicationContext context = 
					new ClassPathXmlApplicationContext("spring/config/applicationContext.xml");
		BusinessService service = (BusinessService)context.getBean("businessServiceImpl");
		String result = service.findByName("김철수");
		System.out.println("Main 조회결과 : "+result);
		
		service.register("id-1", "1111", "최영수");
		try {
			service.deleteById("id");
		} catch (Exception e) {
			System.out.println("---------main의 catch-----------");
		}
	}
}









