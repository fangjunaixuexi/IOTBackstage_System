package com.dajingzhu.bean;

public class RegionAdministration {

	private int id;
	private String regionid;
	private String regionname;
	private int father;
	public int getId() {
		return id;
	}
	public void setId(int id) {
		this.id = id;
	}
	public String getRegionid() {
		return regionid;
	}
	public void setRegionid(String regionid) {
		this.regionid = regionid;
	}
	public String getRegionname() {
		return regionname;
	}
	public void setRegionname(String regionname) {
		this.regionname = regionname;
	}
	public int getFather() {
		return father;
	}
	public void setFather(int father) {
		this.father = father;
	}
	@Override
	public String toString() {
		return "RegionAdministration [id=" + id + ", regionid=" + regionid + ", regionname=" + regionname + ", father="
				+ father + "]";
	}
	
}
