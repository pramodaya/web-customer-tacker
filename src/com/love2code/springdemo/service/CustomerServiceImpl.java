package com.love2code.springdemo.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.love2code.springdemo.dao.CustomerDAO;
import com.love2code.springdemo.entity.Customer;

@Service
public class CustomerServiceImpl implements CustomerService {

	//need to inject customer dao
	@Autowired
	private CustomerDAO customerDAO;
	
	@Transactional
	public List<Customer> getCustomers() {
		// TODO Auto-generated method stub
		return customerDAO.getCustomers();
	}

}






















