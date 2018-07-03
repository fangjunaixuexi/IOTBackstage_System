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
	private String regionid;
	private int workman_id;
	private String workman_name;
	private String groupingnumber;
    private String groupingname;
    
	public String getGroupingnumber() {
		return groupingnumber;
	}
	public void setGroupingnumber(String groupingnumber) {
		this.groupingnumber = groupingnumber;
	}
	public String getGroupingname() {
		return groupingname;
	}
	public void setGroupingname(String groupingname) {
		this.groupingname = groupingname;
	}
	public String getWorkman_name() {
		return workman_name;
	}
	public void setWorkman_name(String workman_name) {
		this.workman_name = workman_name;
	}
	public int getWorkman_id() {
		return workman_id;
	}
	public void setWorkman_id(int workman_id) {
		this.workman_id = workman_id;
	}
	public String getRegionid() {
		return regionid;
	}
	public void setRegionid(String regionid) {
		this.regionid = regionid;
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
