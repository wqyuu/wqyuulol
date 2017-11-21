package com.Stream.entity;


public class Itemtype implements java.io.Serializable {

	// Fields

	private Long id;
	private Items items;
	private String name;

	// Constructors

	/** default constructor */
	public Itemtype() {
	}

	/** full constructor */
	public Itemtype(Items items, String name) {
		this.items = items;
		this.name = name;
	}

	public Long getId() {
		return this.id;
	}

	public void setId(Long id) {
		this.id = id;
	}

	public Items getItems() {
		return this.items;
	}

	public void setItems(Items items) {
		this.items = items;
	}

	public String getName() {
		return this.name;
	}

	public void setName(String name) {
		this.name = name;
	}

}