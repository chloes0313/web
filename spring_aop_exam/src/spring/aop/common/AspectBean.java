package spring.aop.common;

import org.aspectj.lang.annotation.After;
/*
 * 공통관심사항 메서드 구현 클래스
 *  - @Aspect 선언
 *  - 
 */
import org.aspectj.lang.annotation.Aspect;
import org.aspectj.lang.annotation.Before;
import org.springframework.stereotype.Component;

@Aspect
@Component
public class AspectBean {
	/*
	 * 공통 로직을 처리할 메서드
	 * 호출될 시점과 관련된 Annotation 선언 -> Advice(어노테이션)
	 */
	@Before("within(spring.aop.model.dao.*)")
	public void before(){
		System.out.println("=================before() 실행=================");
	}
											//모든 리턴타입		//model의 하위 패키지, Business___타입의 find로 시작하는 메서드
	//@AfterReturning(pointcut="execution(public * spring.aop.model.service.Business*.*(..))", returning="obj")
	public void afterReturn(Object obj){	// obj 변수 : 핵심 메서드에서 리턴한 값을 받을 변수
											//			Annotation의 returning속성에 변수명 지정
		System.out.println("^^^^^^^^^^^^^^^^afterReturn() 실행:"+obj);
	}
	
	
	//@AfterThrowing(pointcut="bean(businessServiceImpl)", throwing="e")
	public void afterThrow(Exception e){
		System.out.println("////////////////afterThrow() 실행:" + e.getMessage());
	}
	
	@After("bean(businessServiceImpl)")	// exception 관계없이 실행(like finally)
	public void after(){
		System.out.println("~~~~~~~~~~~~~~~after() 실행:");
	}
	
}
