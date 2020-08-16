package com.tcs.assignment;

import java.sql.Time;
import java.util.Date;

import javax.persistence.Entity;
import javax.persistence.Id;

@Entity
public class login {

	@Id
	private int id;
	private String username;
	private String password;
	private String role;
	private Date Last_Login;
	private Time Last_time;
	public int getId() {
		return id;
	}
	public void setId(int id) {
		this.id = id;
	}
	public String getUsername() {
		return username;
	}
	public void setUsername(String username) {
		this.username = username;
	}
	public String getPassword() {
		return password;
	}
	public void setPassword(String password) {
		this.password = password;
	}
	public String getRole() {
		return role;
	}
	public void setRole(String role) {
		this.role = role;
	}
	
	public Date getLast_Login() {
		return Last_Login;
	}
	public void setLast_Login(Date last_Login) {
		Last_Login = last_Login;
	}
	public Time getLast_time() {
		return Last_time;
	}
	public void setLast_time(Time last_time) {
		Last_time = last_time;
	}
	@Override
	public String toString() {
		return "login [id=" + id + ", username=" + username + ", password=" + password + ", role=" + role
				+ ", Last_Login=" + Last_Login + "]";
	}
	
	public login(int id, String username, String password, String role) {
		super();
		this.id = id;
		this.username = username;
		this.password = password;
		this.role = role;
	}
	public login() {
		super();
	}
}
