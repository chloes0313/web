package spring.aop.model.dao;

import java.util.ArrayList;

import spring.aop.vo.Customer;

public interface CustomerDao {
	void insertCustomer(Customer cto);
	void updateCustomer(Customer cto);
	void deleteCustomerById(String id);
	Customer selectCustomerById(String id);
	ArrayList<Customer> selectAllCustomer();
}
