package spring.aop.model.dao.impl;

import java.util.ArrayList;

import org.springframework.stereotype.Repository;

import spring.aop.model.dao.CustomerDao;
import spring.aop.vo.Customer;

@Repository
public class CustomerDaoImpl implements CustomerDao {

	@Override
	public void insertCustomer(Customer customer) {
		try {
			Thread.sleep(730);
		} catch (InterruptedException e) {
		}
		System.out.println("------DAO : 고객 정보 등록 처리");

	}

	@Override
	public void updateCustomer(Customer customer) {
		try {
			Thread.sleep(890);
		} catch (InterruptedException e) {
		}
		System.out.println("------DAO : 고객 정보 수정 처리");
	}

	@Override
	public void deleteCustomerById(String id) {
		try {
			Thread.sleep(420);
		} catch (InterruptedException e) {
		}
		System.out.println("------DAO : 고객 정보 삭제 처리");

	}

	@Override
	public Customer selectCustomerById(String id) {
		try {
			Thread.sleep(1150);
		} catch (InterruptedException e) {
		}
		System.out.println("------DAO : ID로 고객 정보 조회 처리");
		return new Customer(id, "1111", "유희영", 29);
	}

	@Override
	public ArrayList<Customer> selectAllCustomer() {
		try {
			Thread.sleep(1620);
		} catch (InterruptedException e) {
		}
		System.out.println("------DAO : 전체 고객 정보 조회 처리");
		ArrayList<Customer> list = new ArrayList<Customer>();
		list.add(new Customer("id-1","1111", "박철수", 23));
		list.add(new Customer("id-2","2222", "이명우", 31));
		list.add(new Customer("id-3","3333", "장우석", 27));
		return list;
	}

}
