package com.exam.model;

import java.util.Arrays;



import jakarta.persistence.Entity;
import jakarta.persistence.Id;
import jakarta.persistence.Lob;

@Entity
public class User {
  @Id
  private String email;
  private String name;
  private String standard;
  private String gender;
  private String location;
  private String password;
  
  
  @Lob
  private byte[] image;


public String getEmail() {
	return email;
}


public void setEmail(String email) {
	this.email = email;
}


public String getName() {
	return name;
}


public void setName(String name) {
	this.name = name;
}


public String getStandard() {
	return standard;
}


public void setStandard(String standard) {
	this.standard = standard;
}


public String getGender() {
	return gender;
}


public void setGender(String gender) {
	this.gender = gender;
}


public String getLocation() {
	return location;
}


public void setLocation(String location) {
	this.location = location;
}


public String getPassword() {
	return password;
}


public void setPassword(String password) {
	this.password = password;
}


public byte[] getImage() {
	return image;
}


public void setImage(byte[] image) {
	this.image = image;
}


@Override
public String toString() {
	return "User [email=" + email + ", name=" + name + ", standard=" + standard + ", gender=" + gender + ", location="
			+ location + ", password=" + password + ", image=" + Arrays.toString(image) + "]";
}


public User(String email, String name, String standard, String gender, String location, String password) {
	super();
	this.email = email;
	this.name = name;
	this.standard = standard;
	this.gender = gender;
	this.location = location;
	this.password = password;
}


public User() {
	super();
	// TODO Auto-generated constructor stub
}
  
  
}
