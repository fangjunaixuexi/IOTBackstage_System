package com.dajingzhu.bean;

public class TowerCrane {

	private int id;
	private String towercranename;
	private int deviceSN;
	private String regionid;
	private String floor;
	private String belong;
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
	public String getTowercranename() {
		return towercranename;
	}
	public void setTowercranename(String towercranename) {
		this.towercranename = towercranename;
	}
	public int getDeviceSN() {
		return deviceSN;
	}
	public void setDeviceSN(int deviceSN) {
		this.deviceSN = deviceSN;
	}
	public String getRegionid() {
		return regionid;
	}
	public void setRegionid(String regionid) {
		this.regionid = regionid;
	}
	public String getFloor() {
		return floor;
	}
	public void setFloor(String floor) {
		this.floor = floor;
	}
	@Override
	public String toString() {
		return "TowerCrane [id=" + id + ", towercranename=" + towercranename + ", deviceSN=" + deviceSN + ", regionid="
				+ regionid + ", floor=" + floor + "]";
	}
	
}
