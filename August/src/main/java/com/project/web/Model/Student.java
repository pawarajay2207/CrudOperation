package com.project.web.Model;

import jakarta.persistence.Entity;
import jakarta.persistence.Id;

@Entity
public class Student {
	@Id
	private int Roll_no;
	private String Name;
	private String Address;
	private int age;

	public int getRoll_no() {
		return Roll_no;
	}

	public void setRoll_no(int roll_no) {
		Roll_no = roll_no;
	}

	public String getName() {
		return Name;
	}

	public void setName(String name) {
		Name = name;
	}

	public String getAddress() {
		return Address;
	}

	public void setAddress(String address) {
		Address = address;
	}

	public int getAge() {
		return age;
	}

	public void setAge(int age) {
		this.age = age;
	}

	public Student(int roll_no, String name, String address, int age) {
		super();
		Roll_no = roll_no;
		Name = name;
		Address = address;
		this.age = age;
	}

	public Student() {
		super();
		// TODO Auto-generated constructor stub
	}

	@Override
	public String toString() {
		return "Student [Roll_no=" + Roll_no + ", Name=" + Name + ", Address=" + Address + ", age=" + age + "]";
	}

}
