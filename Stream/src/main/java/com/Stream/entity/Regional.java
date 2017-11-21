package com.Stream.entity;

import java.util.ArrayList;
import java.util.HashSet;
import java.util.List;
import java.util.Set;


public class Regional implements java.io.Serializable {

	// Fields

	private Long id;
	private String name;
	private String picture;
	private List<People> peoples = new ArrayList<People>();
	private List<Consumer> consumers = new ArrayList<Consumer>();

	// Constructors

	/** default constructor */
	public Regional() {
	}

	/** full constructor */
	public Regional(String name, String picture, List<People> peoples,
			List<Consumer> consumers) {
		this.name = name;
		this.picture = picture;
		this.peoples = peoples;
		this.consumers = consumers;
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

	public List<People> getPeoples() {
		return this.peoples;
	}

	public void setPeoples(List<People> peoples) {
		this.peoples = peoples;
	}

	public List<Consumer> getConsumers() {
		return this.consumers;
	}

	public void setConsumers(List<Consumer> consumers) {
		this.consumers = consumers;
	}

}