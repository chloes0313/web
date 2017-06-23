package spring.aop.common;


import java.sql.Date;

import org.aspectj.lang.ProceedingJoinPoint;
import org.aspectj.lang.annotation.Around;
/*
 * 공통관심사항 메서드 구현 클래스
 *  - @Aspect 선언
 *  - 
 */
import org.aspectj.lang.annotation.Aspect;
import org.springframework.stereotype.Component;

@Aspect
@Component
public class AspectBean {
	/*
	 * 공통 로직을 처리할 메서드
	 * 호출될 시점과 관련된 Annotation 선언 -> Advice(어노테이션)
	 */
	@Around("within(spring.aop.model..*)")	// 패키지 지정시 : within
	public Object timeCheck(ProceedingJoinPoint joinPoint) throws Throwable {
		Object returnValue = null;
		try{
			//@Before
			long l1 = System.currentTimeMillis();
			returnValue = joinPoint.proceed();	// point-cut 메서드 호출, 하지않으면 이 메서드만 실행되고 끝남
			// joinPoint.proceed()는 point-cut 메서드가 리턴한 값을 Object로 받는다. 
			//@AfterReturning		// point-cut 메서드가 return 하는 경우(정상수행) 실행
			long l2 = System.currentTimeMillis();
			String type = joinPoint.getTarget().getClass().getName();
			String method = joinPoint.getSignature().getName();
			System.out.printf("%s 클래스의 %s 메서스 실행 시 걸린시간 : %d밀리초%n", type, method, l2-l1);// LOG
			//받아올 리턴 값 반드시 다시 요청한 쪽으로 리턴 (추가 처리 가능)
			return returnValue;
		}catch(Throwable te){
			//@AfterThrowing 		//point-cut메서드 예외를 던진 경우 호출
			// 실제 요청한 곳으로 다시 throw : 호출한 쪽에서 예오니 처리하게
			throw te;
		}finally{
			//@After				//point-cut 실행이 종료되면 무조건 실행
		}

	}
	
}
