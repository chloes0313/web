package com.chloes.util;

import java.io.IOException;
import java.text.SimpleDateFormat;
import java.util.Date;

import com.fasterxml.jackson.core.JsonGenerator;
import com.fasterxml.jackson.core.JsonProcessingException;
import com.fasterxml.jackson.databind.JsonSerializer;
import com.fasterxml.jackson.databind.SerializerProvider;

/**
 * JsonSeialier : VO를 JSON으로 변환시 특정 타입의 property를 어떤 형식의 문자열로 변화
 * 
 * java.util.Date 변환 -> 밀리초
 */

public class DateJSONSerializer extends JsonSerializer<Date>{
	
	@Override
	/*
	 * 매개변수 :	1 - 변환할 값(원본ㄱ밧)
	 * 			2 - 변환한 내용을 CONVERTER에게 출력해주는 메서드 제공
	 * 			3 - 기존 	JsonSerializer
	 */
	public void serialize(Date date, JsonGenerator gen, SerializerProvider provider)
			throws IOException, JsonProcessingException {
		
		String dateString = new SimpleDateFormat("yyyy년  MM월 dd일").format(date);
		gen.writeString(dateString);
	
		
	}
	

}
