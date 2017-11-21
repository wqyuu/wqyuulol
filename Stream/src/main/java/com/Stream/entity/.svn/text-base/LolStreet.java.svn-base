package com.Stream.entity;

import java.util.HashSet;
import java.util.Set;

public class LolStreet implements java.io.Serializable {

	// Fields

	private Long id;
	private LolDistrict lolDistrict;
	private String name;
	private Set<LolAddress> lolAddresses = new HashSet<LolAddress>(0);

	// Constructors

	/** default constructor */
	public LolStreet() {
	}

	/** full constructor */
	public LolStreet(LolDistrict lolDistrict, String name,
			Set<LolAddress> lolAddresses) {
		this.lolDistrict = lolDistrict;
		this.name = name;
		this.lolAddresses = lolAddresses;
	}

	public Long getId() {
		return this.id;
	}

	public void setId(Long id) {
		this.id = id;
	}
	public LolDistrict getLolDistrict() {
		return this.lolDistrict;
	}

	public void setLolDistrict(LolDistrict lolDistrict) {
		this.lolDistrict = lolDistrict;
	}

	public String getName() {
		return this.name;
	}

	public void setName(String name) {
		this.name = name;
	}

	public Set<LolAddress> getLolAddresses() {
		return this.lolAddresses;
	}

	public void setLolAddresses(Set<LolAddress> lolAddresses) {
		this.lolAddresses = lolAddresses;
	}

}