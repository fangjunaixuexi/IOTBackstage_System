package com.dajingzhu.bean;

public class Video_monitor {
	private int v_id;
	private int port;
	private int c_id;
	private String ip;
	private String vuser_name;
	private String vpassword;
	private String belong;
	public String getBelong() {
		return belong;
	}
	public void setBelong(String belong) {
		this.belong = belong;
	}
	public int getV_id() {
		return v_id;
	}
	public void setV_id(int v_id) {
		this.v_id = v_id;
	}
	public int getPort() {
		return port;
	}
	public void setPort(int port) {
		this.port = port;
	}
	public int getC_id() {
		return c_id;
	}
	public void setC_id(int c_id) {
		this.c_id = c_id;
	}
	public String getIp() {
		return ip;
	}
	public void setIp(String ip) {
		this.ip = ip;
	}
	public String getVuser_name() {
		return vuser_name;
	}
	public void setVuser_name(String vuser_name) {
		this.vuser_name = vuser_name;
	}
	public String getVpassword() {
		return vpassword;
	}
	public void setVpassword(String vpassword) {
		this.vpassword = vpassword;
	}
	@Override
	public String toString() {
		return "Video_monitor [v_id=" + v_id + ", port=" + port + ", c_id=" + c_id + ", ip=" + ip + ", vuser_name="
				+ vuser_name + ", vpassword=" + vpassword + "]";
	}
	
}
