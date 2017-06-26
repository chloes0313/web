package com.chloes.controller;

import java.io.BufferedInputStream;
import java.net.URL;

import org.json.simple.JSONArray;
import org.json.simple.JSONObject;
import org.json.simple.parser.JSONParser;
import org.json.simple.parser.ParseException;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

@Controller
public class MapController {
	
	@RequestMapping(value="Addr2Coord", produces="text/html;charset=UTF-8")
	@ResponseBody
	public String convertAddr2Coord(String addr) throws Exception{
		//저장된 주소
		String url = "https://apis.daum.net/local/geo/addr2coord?apikey=fdde9eeb70abb02b1adeab9633671a56&q=제주 특별자치도 제주시 첨단로 242&output=json";
		double point_x = 0;
		double point_y = 0;
		//주소→좌표 변환API는 주소를 입력하면 그에 해당하는 WGS84 경위도 좌표를 XML, JSON(P)형태로 반환해 줍니다.
		
		
		JSONParser parser = new JSONParser();
		JSONObject jsonObj = (JSONObject)parser.parse(readUrl());
		JSONObject obj =  (JSONObject)jsonObj.get("channel");
		JSONArray array = (JSONArray)obj.get("item");
		for(int i = 0; i<array.size(); i++){
			JSONObject entity = (JSONObject)array.get(i);
			point_x = (double)entity.get("point_x");
			point_y = (double)entity.get("point_y");
		}
		
		
				
		return null;
	}
	
    private static String readUrl() throws Exception {
        BufferedInputStream reader = null;
        try {
            URL url = new URL(
                    "https://apis.daum.net/local/geo/addr2coord"
                    + "?apikey=fdde9eeb70abb02b1adeab9633671a56"
                    + "&q=제주 특별자치도 제주시 첨단로 242"
                    + "&output=json");
            reader = new BufferedInputStream(url.openStream());
            StringBuffer buffer = new StringBuffer();
            int i;
            byte[] b = new byte[4096];
            while( (i = reader.read(b)) != -1){
              buffer.append(new String(b, 0, i));
            }
            return buffer.toString();
        } finally {
            if (reader != null)
                reader.close();
        }
    }
 

}
