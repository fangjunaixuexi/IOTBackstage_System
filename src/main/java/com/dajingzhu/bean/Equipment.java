package com.dajingzhu.bean;

import java.io.Serializable;

public class Equipment implements Serializable {
	/**
	 * 
	 */
	private static final long serialVersionUID = 1L;
	private int id;
	private int enviromental_id;
	private String serial_number;
	private String belong;
	private String regionid;
	private String equipment_name;
	
	public String getEquipment_name() {
		return equipment_name;
	}
	public void setEquipment_name(String equipment_name) {
		this.equipment_name = equipment_name;
	}

	public String getRegionid() {
		return regionid;
	}
	public void setRegionid(String regionid) {
		this.regionid = regionid;
	}
	public String getBelong() {
		return belong;
	}
	public void setBelong(String belong) {
		this.belong = belong;
	}
	public int getId() {
		return id;
	}
	public void setId(int id) {
		this.id = id;
	}
	public int getEnviromental_id() {
		return enviromental_id;
	}
	public void setEnviromental_id(int enviromental_id) {
		this.enviromental_id = enviromental_id;
	}

	public String getSerial_number() {
		return serial_number;
	}
	public void setSerial_number(String serial_number) {
		this.serial_number = serial_number;
	}
	@Override
	public String toString() {
		return "Equipment [id=" + id + ", enviromental_id=" + enviromental_id + ", serial_number=" + serial_number
				+ ", belong=" + belong + ", regionid=" + regionid + ", equipment_name=" + equipment_name + "]";
	}

	
}
