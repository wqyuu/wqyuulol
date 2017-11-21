package com.Stream.entity;


public class Smalltype implements java.io.Serializable {

	// Fields

	private Long id;
	private Sbtype sbtype;
	private Shouban shouban;
	private String names;

	// Constructors

	/** default constructor */
	public Smalltype() {
	}

	/** full constructor */
	public Smalltype(Sbtype sbtype, Shouban shouban, String names) {
		this.sbtype = sbtype;
		this.shouban = shouban;
		this.names = names;
	}

	public Long getId() {
		return this.id;
	}

	public void setId(Long id) {
		this.id = id;
	}
	public Sbtype getSbtype() {
		return this.sbtype;
	}

	public void setSbtype(Sbtype sbtype) {
		this.sbtype = sbtype;
	}

	public Shouban getShouban() {
		return this.shouban;
	}

	public void setShouban(Shouban shouban) {
		this.shouban = shouban;
	}

	public String getNames() {
		return this.names;
	}

	public void setNames(String names) {
		this.names = names;
	}

}