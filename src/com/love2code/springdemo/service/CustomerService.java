package com.love2code.springdemo.service;

import java.util.List;

import com.love2code.springdemo.entity.Customer;

public interface CustomerService {
	
	public List<Customer> getCustomers();

	public void saveCustomer(Customer theCustomer);
}
