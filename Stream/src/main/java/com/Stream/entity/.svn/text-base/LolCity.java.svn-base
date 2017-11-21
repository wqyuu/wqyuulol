package com.Stream.entity;

import java.util.HashSet;
import java.util.Set;

public class LolCity implements java.io.Serializable {

	// Fields

	private Long id;
	private String name;
	private Set<LolDistrict> lolDistricts = new HashSet<LolDistrict>(0);

	// Constructors

	/** default constructor */
	public LolCity() {
	}

	/** minimal constructor */
	public LolCity(String name) {
		this.name = name;
	}

	/** full constructor */
	public LolCity(String name, Set<LolDistrict> lolDistricts) {
		this.name = name;
		this.lolDistricts = lolDistricts;
	}

	public Long getId() {
		return this.id;
	}

	public void setId(Long id) {
		this.id = id;
	}

	public String getName() {
		return this.name;
	}

	public void setName(String name) {
		this.name = name;
	}

	public Set<LolDistrict> getLolDistricts() {
		return this.lolDistricts;
	}

	public void setLolDistricts(Set<LolDistrict> lolDistricts) {
		this.lolDistricts = lolDistricts;
	}

}