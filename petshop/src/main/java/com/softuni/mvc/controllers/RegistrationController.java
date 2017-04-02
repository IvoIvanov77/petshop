package com.softuni.mvc.controllers;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.softuni.mvc.data.entities.User;
import com.softuni.mvc.data.services.UserDAO;



@Controller
public class RegistrationController {
	
	@Autowired 
	private UserDAO dao;
	
	@RequestMapping(value="/add_user", method=RequestMethod.POST)
	public String addUser(User user){
		this.dao.save(user);
		return "redirect:/";
	}

}
