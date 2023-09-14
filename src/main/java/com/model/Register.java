package com.model;

public class Register {
 private int id;
 private String name;
 private String email;
 private String date_Of_birth;
 private String selected_course;
 
public int getId() {
	return id;
}
public void setId(int id) {
	this.id = id;
}
public String getName() {
	return name;
}
public void setName(String name) {
	this.name = name;
}
public String getEmail() {
	return email;
}
public void setEmail(String email) {
	this.email = email;
}
public String getDate_Of_birth() {
	return date_Of_birth;
}
public void setDate_Of_birth(String date_Of_birth) {
	this.date_Of_birth = date_Of_birth;
}
public String getSelected_course() {
	return selected_course;
}
public void setSelected_course(String selected_course) {
	this.selected_course = selected_course;
}
// constructor without id
public Register(String name, String email, String date_Of_birth, String selected_course) {
	super();
	this.name = name;
	this.email = email;
	this.date_Of_birth = date_Of_birth;
	this.selected_course = selected_course;
}
//constructor with id
public Register(int id, String name, String email, String date_Of_birth, String selected_course) {
	super();
	this.id = id;
	this.name = name;
	this.email = email;
	this.date_Of_birth = date_Of_birth;
	this.selected_course = selected_course;
}


 
}
