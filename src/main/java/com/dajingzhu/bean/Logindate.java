package com.dajingzhu.bean;

public class Logindate {
private int login_id;
private String username;
private String logintime;
public int getLogin_id() {
	return login_id;
}
public void setLogin_id(int login_id) {
	this.login_id = login_id;
}
public String getUsername() {
	return username;
}
public void setUsername(String username) {
	this.username = username;
}
public String getLogintime() {
	return logintime;
}
public void setLogintime(String logintime) {
	this.logintime = logintime;
}
@Override
public String toString() {
	return "Logindate [login_id=" + login_id + ", logintime=" + logintime + ", username=" + username + "]";
}

}
