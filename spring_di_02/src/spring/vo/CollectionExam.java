package spring.vo;

import java.util.List;
import java.util.Map;
import java.util.Properties;
import java.util.Set;

public class CollectionExam {

	private Set set;
	private List list;
	private Map map;
	
	/*
	 * Map 계열 - key:String - value:String
	 */
	private Properties properties;



	
	public CollectionExam() {
	}



	public CollectionExam(Set set) {
		this.set = set;
	}
	
	

	public Set getSet() {
		return set;
	}

	public void setSet(Set set) {
		this.set = set;
	}



	public List getList() {
		return list;
	}



	public void setList(List list) {
		this.list = list;
	}




	public Map getMap() {
		return map;
	}




	public void setMap(Map map) {
		this.map = map;
	}
	
	




	@Override
	public String toString() {
		return "CollectionExam [set=" + set + ", list=" + list + ", map=" + map + "]";
	}



	public Properties getProperties() {
		return properties;
	}



	public void setProperties(Properties properties) {
		this.properties = properties;
	}
	
	
	
	

}
