package spring.aop.model.service;

import java.util.ArrayList;

import spring.aop.vo.Customer;

public interface CustomerService {
	void registerCustomer(Customer customer);
	void modifyCustomer(Customer customer);
	void removeCustomerById(String id);
	Customer serachCustomerById(String id);
	ArrayList<Customer> searchAllCustomer();
}
