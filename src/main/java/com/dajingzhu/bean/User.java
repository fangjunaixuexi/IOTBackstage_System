package com.dajingzhu.bean;

public class User {

	private int user_id;
	private String username;
	private String userpassword;
	public int getUser_id() {
		return user_id;
	}
	public void setUser_id(int user_id) {
		this.user_id = user_id;
	}
	public String getUsername() {
		return username;
	}
	public void setUsername(String username) {
		this.username = username;
	}
	public String getUserpassword() {
		return userpassword;
	}
	public void setUserpassword(String userpassword) {
		this.userpassword = userpassword;
	}
	@Override
	public String toString() {
		return "User [user_id=" + user_id + ", username=" + username + ", userpassword=" + userpassword
				+ ", getUser_id()=" + getUser_id() + ", getUsername()=" + getUsername() + ", getUserpassword()="
				+ getUserpassword() + ", getClass()=" + getClass() + ", hashCode()=" + hashCode() + ", toString()="
				+ super.toString() + "]";
	}
	
}
