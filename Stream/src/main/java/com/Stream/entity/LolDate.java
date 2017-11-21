package com.Stream.entity;


public class LolDate implements java.io.Serializable {

	// Fields

	private Long id;
	private LolYue lolYue;
	private String names;
	private String status;
	private Long date1;

	// Constructors

	/** default constructor */
	public LolDate() {
	}

	/** full constructor */
	public LolDate(LolYue lolYue, String names, String status, Long date1) {
		this.lolYue = lolYue;
		this.names = names;
		this.status = status;
		this.date1 = date1;
	}

	public Long getId() {
		return this.id;
	}

	public void setId(Long id) {
		this.id = id;
	}
	public LolYue getLolYue() {
		return this.lolYue;
	}

	public void setLolYue(LolYue lolYue) {
		this.lolYue = lolYue;
	}

	public String getNames() {
		return this.names;
	}

	public void setNames(String names) {
		this.names = names;
	}

	public String getStatus() {
		return this.status;
	}

	public void setStatus(String status) {
		this.status = status;
	}

	public Long getDate1() {
		return this.date1;
	}

	public void setDate1(Long date1) {
		this.date1 = date1;
	}

}