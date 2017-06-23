package domain.service;

public interface GreetingService {

	String getGreeting();

	String getGreeting(String name);

	String getGreeting(String name, int age);

}