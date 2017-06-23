package com.chloes.validation;

import org.springframework.validation.Errors;
import org.springframework.validation.ValidationUtils;
import org.springframework.validation.Validator;

import com.chloes.vo.Member;

/*
 * validator (교재:310)
 *  - 요청 파라미터를 검증하는 컴포넌트(class)
 *  - 직접구현 : implements Validator
 *  		  method oerriding
 *  			- suppports() : 검증 가능한 객체인지 체크
 *  			- validate() : 검증 처리
 *  - Controller(Handler)에서 Validator의 validate()를 호출
 */

//회원 가입시 사용자가 입력한 요청파라미터를 검증할 Validator(-> 용도별로 다수 만들어야함)
	/*
	 * 필수 입력 사항 : id, password, 이름, 이메일
	 * 체크 할 사랑 : 나이-양수(0세이상), 관심사항- 2개 이하로 선택 (자바스크립트에서도 똑같이 적용해야함)
	 */
public class MemberRegisterValidator implements Validator{

	@Override
	public boolean supports(Class<?> clazz) {
		//clazz와 매개변수로 받은 Class가 같은 클래스면 true, 아님 false 리턴
		return clazz.isAssignableFrom(Member.class);
	}

	@Override
	// 매개변수 :	1 - 검증 대상 객체(요청 파라미터들을 가지고 있는 객체)
	//			2 - 검증 시래시 실패 정보를 저장할 객체 : Errors/BindingResult(extends Errors)
	public void validate(Object target, Errors errors) {
		// 필수 입력 사항 : id, password, 이름, 이메일
		// 체크 할 사랑 : 나이-양수(0세이상), 관심사항- 2개 이하로 선택\
		
		Member member = (Member)target;
		
		/*
		 * Errors(BindingResult - Errors의 하위 interface)에서 오류 메세지 등록
		 *  -Global 오류 메세지 등록 : reject()
		 *  -property(요청파라미터)별 오류메시지 등록 : rejectValue()
		 */
		// 1) id체크
		if(member.getId()==null || member.getId().trim().isEmpty()){	// ***항상 null체크가 먼저!!!!!!!
			//errors.rejectValue(field, errorCode, defaultMessage);
			//		-field : 검슬 질패한 property
			//		-errorCode : 오류메세지 코드
			//		-defaultMessage : 디폴트 메세지(오류코드 없으면 사용하는 메세지)
			errors.rejectValue("id", "required", "아이디는 필수 입력사항입니다!");
		}
		if(member.getId().length() < 3){
			errors.rejectValue("id", "min", "아이디는 3글자 이상 입력하세요.");
		}
		
		// 2) pw체크
		if(member.getPassword()==null || member.getPassword().trim().isEmpty()){
			errors.rejectValue("password", "required", "패스워드는 필수 입력사항입니다!");
		}
		
		// 3) 이름, 이메일
		// null || 빈문자열 체크
		// ValidationUtils.rejectIfEmptyOrWhitespace(errors, field, errorCode);
		//  - rejectIfEmpty : 값==null || 값.isEmpty()
		//	- rejectIfEmptyOrWhitespace : 값==null || 값.trim().isEmpty()
		ValidationUtils.rejectIfEmptyOrWhitespace(errors, "name", "required", "이름은 필수 입력사항입니다!");
		ValidationUtils.rejectIfEmptyOrWhitespace(errors, "email", "required", "이메일은 필수 입력사항입니다!");
		
		// 4) 나이
		if(member.getAge() < 0){
			errors.rejectValue("age", "min", "나이는 0세 이상이여야합니다");
		}
		
		// 5) 관심사항
		if(member.getInterest() != null && member.getInterest().length > 2){
			errors.rejectValue("interest", "length", "관심사항을 2개까지만 선택하세요!");
		}
	}
}
