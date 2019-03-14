package com.love2code.springdemo.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import com.love2code.springdemo.dao.CustomerDAO;
import com.love2code.springdemo.entity.Customer;

@Controller
@RequestMapping("/customer")
public class CustomerController {

	// need to inject the customer dao
	@Autowired
	private CustomerDAO customerDAO;
	
	@RequestMapping("/list")
	public String listCustomers(Model theModel) {
		
		// get customers from the dao
		List<Customer> theCustomers = customerDAO.getCustomers();
				
		// add the customers to the model
		theModel.addAttribute("customers", theCustomers);
		for(int i=0;i<theCustomers.size();i++) {
	
			System.out.println(theCustomers.get(i).getFirstName());
		}
		
		return "list-customers";
	}
	
}





