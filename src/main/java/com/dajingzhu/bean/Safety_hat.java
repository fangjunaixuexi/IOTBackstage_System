package com.dajingzhu.bean;

import java.io.Serializable;

public class Safety_hat implements Serializable {

	/**
	 * 
	 */
	private static final long serialVersionUID = 1L;
	private int hat_id;
	private int hat_number;
	private String hat_name;
	private String  belong;
	private int c_id;
	public int getC_id() {
		return c_id;
	}
	public void setC_id(int c_id) {
		this.c_id = c_id;
	}
	public int getHat_id() {
		return hat_id;
	}
	public void setHat_id(int hat_id) {
		this.hat_id = hat_id;
	}
	public int getHat_number() {
		return hat_number;
	}
	public void setHat_number(int hat_number) {
		this.hat_number = hat_number;
	}
	public String getHat_name() {
		return hat_name;
	}
	public void setHat_name(String hat_name) {
		this.hat_name = hat_name;
	}
	public String getBelong() {
		return belong;
	}
	public void setBelong(String belong) {
		this.belong = belong;
	}

}
