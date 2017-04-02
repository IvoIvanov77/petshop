package com.softuni.mvc.controllers;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.SessionAttributes;

import com.softuni.mvc.data.entities.User;
import com.softuni.mvc.data.services.UserDAO;



@Controller
@SessionAttributes("user")
public class LoginController {	
	
	@Autowired 
	private UserDAO dao;		
	
	
	@RequestMapping(value="/submit", method=RequestMethod.POST)
	public String login(Model model, @ModelAttribute("username") String username, 
			@ModelAttribute("password") String password){
		int id = dao.getUserID(username, password);
		if(id == -1){
			return "redirect:/login";
		}else {
			User user = dao.getById(id);
			model.addAttribute("user", user);				
			return "/home";
			
		}
		
	}
	
	@RequestMapping("/logout")
	public String logout(@ModelAttribute("user")User user){
		user.setGuest();
		return "redirect:/";
	}

}
