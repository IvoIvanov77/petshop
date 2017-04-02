package com.softuni.mvc.controllers;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.SessionAttributes;

import com.softuni.mvc.data.entities.User;

@Controller
@SessionAttributes("user")
public class NavbarController {
	
	@ModelAttribute("user")		
	public User getResource(){
		System.out.println("Adding a new resource to the model");
		return new User();
	}	
	
	@RequestMapping("/")	
	public String startPage(){
		return "home";
	}
	
	@RequestMapping("/profile")	
	public String myProfile(){
		return "profile";
	}
	
	@RequestMapping("/search")	
	public String search(){
		return "search";
	}
	
	@RequestMapping("/login")	
	public String login(){
		return "login";
	}
	
	@RequestMapping("/registration_page")	
	public String register(){
		return "registration_page";
	}
	
	@RequestMapping("/add_item")	
	public String addItem(){
		return "add_item";
	}	
	

}
