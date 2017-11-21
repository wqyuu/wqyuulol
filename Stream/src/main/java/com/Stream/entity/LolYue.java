package com.Stream.entity;

import java.util.ArrayList;
import java.util.HashSet;
import java.util.List;
import java.util.Set;


public class LolYue implements java.io.Serializable {

	// Fields

	private Long id;
	private String names;
	private List<LolDate> lolDates = new ArrayList<LolDate>(0);

	// Constructors

	/** default constructor */
	public LolYue() {
	}

	/** full constructor */
	public LolYue(String names, List<LolDate> lolDates) {
		this.names = names;
		this.lolDates = lolDates;
	}

	public Long getId() {
		return this.id;
	}

	public void setId(Long id) {
		this.id = id;
	}

	public String getNames() {
		return this.names;
	}

	public void setNames(String names) {
		this.names = names;
	}

	public List<LolDate> getLolDates() {
		return this.lolDates;
	}

	public void setLolDates(List<LolDate> lolDates) {
		this.lolDates = lolDates;
	}

}