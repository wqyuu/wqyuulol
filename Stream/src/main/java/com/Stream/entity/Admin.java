package com.Stream.entity;

public class Admin extends BaseEntity {

	private int Aid;
	private String Aname;
	private String Apass;
	
	public Admin() {
		super();
	}
	

	public Admin(int aid, String aname, String apass) {
		super();
		Aid = aid;
		Aname = aname;
		Apass = apass;
	}


	public String getAname() {
		return Aname;
	}


	public void setAname(String aname) {
		Aname = aname;
	}


	public int getAid() {
		return Aid;
	}
	public void setAid(int aid) {
		Aid = aid;
	}
	public String getApass() {
		return Apass;
	}
	public void setApass(String apass) {
		Apass = apass;
	}
	
}
