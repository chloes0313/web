package com.chloes.controller;

import org.springframework.stereotype.Controller;
import org.springframework.validation.Errors;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;

import com.chloes.validation.ProductRegisterValidator;
import com.chloes.vo.Product;

@Controller
@RequestMapping("/product/")
public class ProductController {

	@RequestMapping("register")
	public String registerProduct(@ModelAttribute Product product, Errors errors){
		ProductRegisterValidator validator = new ProductRegisterValidator();
		validator.validate(product, errors);
		
		if(errors.hasErrors()){	// errors에 오류가 1개라도 등록되 있으면 true
			return "product/register_form";	// 등록폼으로 이동
		}
		
		System.out.println(product);
		
		return "product/register_success";
	}
}
