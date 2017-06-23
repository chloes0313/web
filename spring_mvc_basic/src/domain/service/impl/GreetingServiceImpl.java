package domain.service.impl;

import org.springframework.stereotype.Service;

import domain.service.GreetingService;

@Service
public class GreetingServiceImpl implements GreetingService {

	/* (non-Javadoc)
	 * @see domain.service.impl.GreetingService#getGreeting()
	 */
	@Override
	public String getGreeting(){
	      return "안녕하세요....ㅇㅅㅇ무명씨";
	   }
	   
	   /* (non-Javadoc)
	 * @see domain.service.impl.GreetingService#getGreeting(java.lang.String)
	 */
	@Override
	public String getGreeting(String name){
	      return String.format("%s님 안녕하세요.", name);
	      
	   }
	   
	   /* (non-Javadoc)
	 * @see domain.service.impl.GreetingService#getGreeting(java.lang.String, int)
	 */
	@Override
	public String getGreeting(String name,int age){
	      return String.format("%d세 %s님 안녕하세요.", age,name);
	   }
}
