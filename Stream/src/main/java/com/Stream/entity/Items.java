package com.Stream.entity;

import java.util.ArrayList;
import java.util.List;

public class Items implements java.io.Serializable {

	// Fields

	private Long id;
	private String name;
	private String picture;
	private Long gold;
	private List<Hero> heros = new ArrayList<Hero>(0);
	private List<Itemtype> itemtypes = new ArrayList<Itemtype>(0);

	// Constructors

	/** default constructor */
	public Items() {
	}

	/** full constructor */
	public Items(String name, String picture, Long gold, List<Hero> heros,
			List<Itemtype> itemtypes) {
		this.name = name;
		this.picture = picture;
		this.gold = gold;
		this.heros = heros;
		this.itemtypes = itemtypes;
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

	public String getPicture() {
		return this.picture;
	}

	public void setPicture(String picture) {
		this.picture = picture;
	}

	public Long getGold() {
		return this.gold;
	}

	public void setGold(Long gold) {
		this.gold = gold;
	}

	public List<Hero> getHeros() {
		return this.heros;
	}

	public void setHeros(List<Hero> heros) {
		this.heros = heros;
	}

	public List<Itemtype> getItemtypes() {
		return this.itemtypes;
	}

	public void setItemtypes(List<Itemtype> itemtypes) {
		this.itemtypes = itemtypes;
	}

}