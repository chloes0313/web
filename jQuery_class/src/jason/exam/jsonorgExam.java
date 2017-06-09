package jason.exam;


import java.util.Arrays;
import java.util.List;

import org.json.JSONArray;
import org.json.JSONObject;

import member.vo.Member;

/*
 * Java JSON API : 자바 데이터(객체) 
 * JSON Object
 */

public class jsonorgExam {
	public static void exam1(){
		
		// 1. 기본 : 값을 하나만 넣어서 { }로 변환
		JSONObject jobj = new JSONObject();	// { 속성:값, 속성:값,...}
		//값 추가 : name-value 쌍(put)
		jobj.put("name", "임기영");
		jobj.put("age", 25);
		jobj.put("marriage", false);
		//JSONObject -> { } 변환 : toString()
		String json = jobj.toString();
		System.out.println(json);
		// -> { "marriage":false,"name":"임기영","age":25 }
	}
	
	public static void exam2(){
		// 2. VO객체 -> { }
		Member member = new Member("id-001", "바보똥꼬", "bbtk@naver.com", 300000, true);
		JSONObject obj = new JSONObject(member);
		System.out.println(obj);
	}
	
	public static void exam3(){
		// 3. Java Data -> [ ] (배열형태) : JSONArray
		JSONArray jArr = new JSONArray();
		jArr.put("김종현");
		jArr.put("김재환");
		jArr.put("강다니엘");
		jArr.put("박지훈");
		System.out.println(jArr);
		// ["김종현", "김재환", "강다니엘", "박지훈"]
		
		// put(객체) => 변환시 객체.toString() 값을 사용
		jArr.put(new Member("id-001", "바보똥꼬", "bbtk@naver.com", 300000, true));
		System.out.println(jArr);
		// ["김종현","김재환","강다니엘","박지훈","Member [id=id-001, name=바보똥꼬, email=bbtk@naver.com, mileage=300000, marriage=true]"]
		
		jArr.remove(4);
		
		// put(JSONObject객체)
		jArr.put(new JSONObject(new Member("id-001", "바보똥꼬", "bbtk@naver.com", 300000, true)));
		System.out.println(jArr);
		// ["김종현","김재환","강다니엘","박지훈",{"marriage":true,"name":"바보똥꼬","id":"id-001","email":"bbtk@naver.com","mileage":300000}]

	}
	
	public static void exam4(){
		String[] names = { "육회", "막창", "양꼬치", "닭발" };
		JSONArray jArr = new JSONArray(names);
		System.out.println(jArr);
	}
	
	public static void exam5(){
		// List => [ ]
		List list = Arrays.asList(10, 20, 30, 40, 50, 60);	// Integer객체
		JSONArray jArr = new JSONArray(list);
		System.out.println(jArr);
	}
	
	public static void exam6(){
		List list = Arrays.asList(
				new Member("id-001", "일번", "bbtk@naver.com", 100000, true),
				new Member("id-002", "이번", "bbtk@naver.com", 120000, false),
				new Member("id-003", "삼번", "bbtk@naver.com", 123000, true),
				new Member("id-004", "사번", "bbtk@naver.com", 123400, true),
				new Member("id-004", "오번", "bbtk@naver.com", 123450, false)
				);
		JSONArray jArr =  new JSONArray(list);
		// JSONArray 안에 VO 객체가 들어가 있으면 JSONObject로 변환 필요없이 그냥 넣는다.
		System.out.println(jArr);
		/* var list = [
		 * 		{"marriage":true,"name":"일번","id":"id-001","email":"bbtk@naver.com","mileage":100000},
		 * 		{"marriage":false,"name":"이번","id":"id-002","email":"bbtk@naver.com","mileage":120000},
		 * 		{"marriage":true,"name":"삼번","id":"id-003","email":"bbtk@naver.com","mileage":123000},
		 * 		{"marriage":true,"name":"사번","id":"id-004","email":"bbtk@naver.com","mileage":123400},
		 * 		{"marriage":false,"name":"오번","id":"id-004","email":"bbtk@naver.com","mileage":123450}];
		 * 
		 * list[2].name	// -> 삼번
		 * list[4].mileage	// -> 123450
		 */
		
		

	}
	
	public static void main(String[] args){
		exam1();
		exam2();
		exam3();
		exam4();
		exam5();
		exam6();
		
	}
}
