package com.dajingzhu.bean;

import java.io.Serializable;

public class Grouping implements Serializable {

	/**
	 * 安全帽分组表
	 */
	private static final long serialVersionUID = 1L;
	private int groupingid;
	private String groupingnumber;
	private String groupingname;
	
	public int getGroupingid() {
		return groupingid;
	}
	public void setGroupingid(int groupingid) {
		this.groupingid = groupingid;
	}
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
	@Override
	public String toString() {
		return "Grouping [groupingid=" + groupingid + ", groupingnumber=" + groupingnumber + ", groupingname="
				+ groupingname + "]";
	}
	
}
