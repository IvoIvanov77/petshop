package com.softuni.mvc.data.entities;

public class Pet {
	
	private String name;
	
	private String age;
	
	private String breed;
	
	private String gender;
	
	private String type;

	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}

	public String getAge() {
		return age;
	}

	public void setAge(String age) {
		this.age = age;
	}

	public String getBreed() {
		return breed;
	}

	public void setBreed(String breed) {
		this.breed = breed;
	}

	public String getGender() {
		return gender;
	}

	public void setGender(String gender) {
		this.gender = gender;
	}

	public String getType() {
		return type;
	}

	public void setType(String type) {
		this.type = type;
	}

	@Override
	public String toString() {
		return "Pet [name=" + name + ", age=" + age + ", breed=" + breed + ", gender=" + gender + ", type=" + type
				+ "]";
	}
	
	

}
