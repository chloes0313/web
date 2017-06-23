package main;

import java.util.Enumeration;
import java.util.List;
import java.util.Map;
import java.util.Map.Entry;
import java.util.Properties;
import java.util.Set;

import org.springframework.context.ApplicationContext;
import org.springframework.context.support.ClassPathXmlApplicationContext;

import spring.vo.CollectionExam;

public class TestDI3 {
	public static void main(String[] args) {
		ApplicationContext context = new ClassPathXmlApplicationContext("spring/config/applicationContext3.xml");
		
		CollectionExam exam = (CollectionExam)context.getBean("collectionExam");
		Set set = exam.getSet();
		for(Object obj : set){
			System.out.println(obj +" : " + obj.getClass().getName());
		
		}
		
		exam = (CollectionExam)context.getBean("collectionExam3");
		List list = exam.getList();
		for(Object obj : list){
			System.out.println(obj);
		}
		
		exam = (CollectionExam)context.getBean("collectionExam4");
		Map map = exam.getMap();
		Set<Entry> tmp = map.entrySet();
		for(Entry e : tmp){
			System.out.println(e.getKey() +" : "+e.getValue());
		}
		
		exam = (CollectionExam)context.getBean("collectionExam5");
		Properties prop = exam.getProperties();
		Enumeration e= prop.propertyNames();
		while(e.hasMoreElements()){
			String key= (String)e.nextElement();
			String value = (String)prop.getProperty(key);
			System.out.printf("%s - %s/n", key, value);
		}
		
		List list2 = (List)context.getBean("mylist");
		System.out.println(list2);
	}

}
