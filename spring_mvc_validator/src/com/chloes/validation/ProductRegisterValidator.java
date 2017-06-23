package com.chloes.validation;

import org.springframework.validation.Errors;
import org.springframework.validation.ValidationUtils;
import org.springframework.validation.Validator;

import com.chloes.vo.Product;

public class ProductRegisterValidator implements Validator{

	@Override
	public boolean supports(Class<?> clazz) {

		return clazz.isAssignableFrom(Product.class);
	}

	@Override
	public void validate(Object target, Errors errors) {
		// 필수 : 제품Id, 제품명,,제조사명, (가격 - 안입력하면 형식 체크)
		// 체크 : 가격 (10이상), 선택옵션(1개이상 선택)
		Product product = (Product)target;
		
		// 1. 제품 아이디
		if(product.getId() == null || product.getId().trim().isEmpty()){
			errors.rejectValue("id", "required", "제품 아이디 필수 입력");
		}
		
		
		// 2. 제품명
		if(product.getName() == null || product.getName().trim().isEmpty()){
			errors.rejectValue("name", "required", "제품명 필수 입력");
		}
		
		// 3. 제조사명
		ValidationUtils.rejectIfEmptyOrWhitespace(errors, "companyName", "required", "제조사명 필수 입력");
	
		// 4. 가격
		if(product.getPrice() < 10){
			errors.rejectValue("price", "min", "가격은 10원 이상 입력");
		}
		if(product.getOption()==null || product.getOption().length < 2){
			errors.rejectValue("option", "length", "선택옵션은 2개 이상 선택");
		}
	
	}
	
}
