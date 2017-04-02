package com.softuni.mvc.data.entities;


public class User {	
	
	private String username;
	
	private String password;		
	
	private Profile profile;
	

	public String getUsername() {
		return username;
	}

	public Profile getProfile() {
		return profile;
	}

	public void setProfile(Profile profile) {
		this.profile = profile;
	}

	public void setUsername(String userName) {
		this.username = userName;
	}

	public String getPassword() {
		return password;
	}

	public void setPassword(String password) {
		this.password = password;
	}

	public boolean isGuest() {
		return this.username == null;
	}

	public void setGuest() {
//		this.isGuest = true;
		this.username = null;
		this.password = null;
		this.profile = null;
	}

	@Override
	public String toString() {
		return "User [username=" + username + ", password=" + password + ", profile=" + profile + ", isGuest=" + this.isGuest()
				+ "]";
	}

	
	 

}
