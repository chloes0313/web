package spring.aop.model.service.impl;

import java.util.ArrayList;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import spring.aop.model.dao.CustomerDao;
import spring.aop.model.service.CustomerService;
import spring.aop.vo.Customer;

@Service("customerService")
public class CustomerServiceImpl implements CustomerService {
	
	@Autowired
	private CustomerDao dao;

	@Override
	public void registerCustomer(Customer customer) {
		try {
			Thread.sleep(210);
		} catch (InterruptedException e) {
		}
		dao.insertCustomer(customer);
		System.out.println("*****Service : 등록 처리 완료");
	}

	@Override
	public void modifyCustomer(Customer customer) {
		try {
			Thread.sleep(170);
		} catch (InterruptedException e) {
		}
		dao.updateCustomer(customer);
		System.out.println("*****Service : 수정 처리 완료");
		
	}
	@Override
	public void removeCustomerById(String id){
		try {
			Thread.sleep(210);
		} catch (InterruptedException e) {
		}
		dao.deleteCustomerById(id);
		System.out.println("*****Service : 삭제 처리 완료");
	}
	@Override
	public Customer serachCustomerById(String id) {
		try {
			Thread.sleep(221);
		} catch (InterruptedException e) {
		}
		Customer customer = dao.selectCustomerById(id);
		System.out.println("*****Service : ID로 고객 정보 조회 처리 완료");
		return customer;
	}

	@Override
	public ArrayList<Customer> searchAllCustomer() {
		try {
			Thread.sleep(164);
		} catch (InterruptedException e) {
		}
		ArrayList<Customer> list = dao.selectAllCustomer();
		System.out.println("*****Service : 전체 고객 정보 조회 처리 완료");
		return list;
	}
}
