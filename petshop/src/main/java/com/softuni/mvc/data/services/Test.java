package com.softuni.mvc.data.services;

import org.springframework.context.support.ClassPathXmlApplicationContext;

import com.softuni.mvc.data.entities.Profile;
import com.softuni.mvc.data.entities.User;

public class Test {

	public static void main(String[] args) {
		// TODO Auto-generated method stub
		
		
		ClassPathXmlApplicationContext ctx = new ClassPathXmlApplicationContext("/petshop/src/main/webapp/WEB-INF/spring/applicationContext.xml");
		UserDAO dao = ctx.getBean("employeeDAO", UserDAO.class);
		
		
		
		User user = new User();
		
		user.setPassword("password");
		user.setUsername("password");
		
		Profile p = new Profile();
		
		p.setFirstName("ivaylo");
		p.setLastName("ivanov");
		p.setCity("Varna");
		p.setEmail("iv@abv.bg");
		user.setProfile(p);
		dao.save(user);
		
		ctx.close();

	}

}
