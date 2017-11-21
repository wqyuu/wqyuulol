package com.Stream.entity;

public class Admin extends BaseEntity {

	private int Aid;
	private String Name;
	private String Apass;
	
	public Admin() {
		super();
	}
	
	public Admin(int aid, String name, String apass) {
		super();
		Aid = aid;
		Name = name;
		Apass = apass;
	}

	public int getAid() {
		return Aid;
	}
	public void setAid(int aid) {
		Aid = aid;
	}
	public String getName() {
		return Name;
	}
	public void setName(String name) {
		Name = name;
	}
	public String getApass() {
		return Apass;
	}
	public void setApass(String apass) {
		Apass = apass;
	}
	
}
