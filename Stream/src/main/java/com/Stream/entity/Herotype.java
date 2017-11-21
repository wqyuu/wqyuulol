package com.Stream.entity;

import java.util.ArrayList;
import java.util.List;


public class Herotype implements java.io.Serializable {

	// Fields

	private Long id;
	private String name;
	private List<Hero> heros = new ArrayList<Hero>(0);

	// Constructors

	/** default constructor */
	public Herotype() {
	}

	/** full constructor */
	public Herotype(String name, List<Hero> heros) {
		this.name = name;
		this.heros = heros;
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

	public List<Hero> getHeros() {
		return this.heros;
	}

	public void setHeros(List<Hero> heros) {
		this.heros = heros;
	}

}