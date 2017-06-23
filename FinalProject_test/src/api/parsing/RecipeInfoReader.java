package api.parsing;

import java.io.FileReader;
import java.io.IOException;
import java.text.ParseException;

import org.json.simple.JSONArray;
import org.json.simple.JSONObject;
import org.json.simple.parser.JSONParser;

import vo.RecipeInfo;

public class RecipeInfoReader {
	
	public static void main(String[] args) throws IOException {
		JSONParser parser = new JSONParser();
		
		try{
			
			JSONObject fileDate = (JSONObject)parser.parse(new FileReader("G:\\P_Final_Project\\recipe_info.json"));
			JSONArray jArr = (JSONArray)fileDate.get("data");
			
			for(int i=0 ; i < 100; i++){
				JSONObject obj = (JSONObject)jArr.get(i);
				RecipeInfo r = new RecipeInfo(
										(int)((long)obj.get("RECIPE_ID")), 
										(String)obj.get("RECIPE_NM_KO"), 
										(String)obj.get("SUMRY"), 
										(String)obj.get("NATION_CODE"), 
										(String)obj.get("NATION_NM"), 
										(String)obj.get("TY_CODE"), 
										(String)obj.get("TY_NM"), 
										(String)obj.get("COOKING_TIME"), 
										(String)obj.get("CALORIE"), 
										(String)obj.get("QNT"), 
										(String)obj.get("LEVEL_NM"), 
										(String)obj.get("IRDNT_CODE"), 
										(String)obj.get("PC_NM"), 
										(String)obj.get("IMG_URL"), 
										(String)obj.get("DET_URL")
										);
										
				 System.out.println(r);	//log
				 /*
				  * 방법 1: 여기에서 객체를 바로DB에 등록할 것인가?
				  * 방법 2: 메서드로 만들어  ArrayList로 만들어서 리턴해주고 호출한 곳에서 DB작업 할 것인가?
				  */
				
			}
			
			
		}catch(Exception e){
			e.printStackTrace();
	
		}
	}
	
	
	
	
	
	
	
	
	
	
	/*
	// tag 값 정보 가져오는 메서드
	private static String getTagValue(String tag, Element eElement){
		NodeList nlList = eElement.getElementsByTagName(tag).item(0).getChildNodes();
		Node nValue = (Node)nlList.item(0);
		
		if(nValue== null){
			return null;
		}
		return nValue.getNodeValue();
	}
	private String API_KEY;
	private String TYPE;
	private String API_URL;
	private int START_INDEX;
	private int END_INDEX;
	private String RECIPE_ID;
	
			
		
	
	public static void main(String[] args) {
		
		int recipeIdInput = 1;
		try{
			while(recipeIdInput<=540){
				// 파싱할 URL
				String API_URL = "" + recipeIdInput;
				
				//페이지 접근 할 Document객체 생성
				// :여기 생성한 document객체를 통해 파싱할 url 요소 읽어들임
				DocumentBuilderFactory dbFactory = DocumentBuilderFactory.newInstance();
				DocumentBuilder dBuilder = dbFactory.newDocumentBuilder();
				Document doc = dBuilder.parse(API_URL);
				
				//root tag
				doc.getDocumentElement().normalize();
				System.out.println("Root element : "+ doc.getDocumentElement().getNodeName());	//
				
				
				// 파싱할 tag
				NodeList nList = doc.getElementsByTagName("row");
				
				for(int i = 0; i< nList.getLength(); i++){
					Node nNode = nList.item(i);
					if(nNode.getNodeType() == Node.ELEMENT_NODE){
						
						Element eElement = (Element)nNode;
						System.out.println("------------");
						System.out.printf("레시피ID: %s%n", getTagValue("RECIPE_ID", eElement));
						System.out.printf("요리순서 %s) ", getTagValue("COOKING_NO", eElement));
						System.out.printf("%s%n", getTagValue("COOKING_DC", eElement));
					}
				}
				
				recipeIdInput++;
				System.out.println("레시피 번호:"+recipeIdInput);
				
			
			}// end of while
		}catch(Exception e){
			System.out.println("예외발생 : "+ e.getMessage());
		}finally{
			
		}

	}
	*/

	
}
