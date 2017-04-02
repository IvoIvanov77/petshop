package com.softuni.mvc.data.entities;

import java.util.List;


public class Item {
	
	private User user;
	
	private Pet pet;
	
	private List<String> images;

	public User getUser() {
		return user;
	}

	public void setUser(User user) {
		this.user = user;
	}

	public Pet getPet() {
		return pet;
	}

	public void setPet(Pet pet) {
		this.pet = pet;
	}

	public List<String> getImages() {
		return images;
	}

	public void setImages(List<String> images) {
		this.images = images;
	}

	@Override
	public String toString() {
		return "Item [user=" + user + ", pet=" + pet + ", images=" + images + "]";
	}
	
	

}
