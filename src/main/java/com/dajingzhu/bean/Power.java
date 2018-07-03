package com.dajingzhu.bean;

public class Power {
  private int id;
  private int power_id;
  private String power_name;
  private String regionid;
  
  public int getId() {
    return id;
}

  public void setId(int id) {
    this.id = id;
}

  public int getPower_id() {
    return power_id;
}

  public void setPower_id(int power_id) {
    this.power_id = power_id;
}

  public String getPower_name() {
    return power_name;
}

  public void setPower_name(String power_name) {
    this.power_name = power_name;
}

  public String getRegionid() {
    return regionid;
}
  
  public void setRegionid(String regionid) {
    this.regionid = regionid;
}

@Override
public String toString() {
	return "Power [id=" + id + ", power_id=" + power_id + ", power_name=" + power_name + ", regionid=" + regionid + "]";
}
  
}
