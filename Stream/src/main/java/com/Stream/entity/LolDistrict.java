package com.Stream.entity;

import java.util.HashSet;
import java.util.Set;

public class LolDistrict implements java.io.Serializable {

	// Fields

	private Long id;
	private LolCity lolCity;
	private String name;
	private Set<LolStreet> lolStreets = new HashSet<LolStreet>(0);

	// Constructors

	/** default constructor */
	public LolDistrict() {
	}

	/** minimal constructor */
	public LolDistrict(String name) {
		this.name = name;
	}

	/** full constructor */
	public LolDistrict(LolCity lolCity, String name, Set<LolStreet> lolStreets) {
		this.lolCity = lolCity;
		this.name = name;
		this.lolStreets = lolStreets;
	}

	public Long getId() {
		return this.id;
	}

	public void setId(Long id) {
		this.id = id;
	}

	public LolCity getLolCity() {
		return this.lolCity;
	}

	public void setLolCity(LolCity lolCity) {
		this.lolCity = lolCity;
	}

	public String getName() {
		return this.name;
	}

	public void setName(String name) {
		this.name = name;
	}

	public Set<LolStreet> getLolStreets() {
		return this.lolStreets;
	}

	public void setLolStreets(Set<LolStreet> lolStreets) {
		this.lolStreets = lolStreets;
	}

}