package com.Stream.entity;


import java.util.ArrayList;
import java.util.HashSet;
import java.util.List;

public class Sbtype implements java.io.Serializable {

	// Fields

	private Long id;
	private String names;
	private List<Smalltype> smalltypes= new ArrayList<Smalltype>(0);

	// Constructors

	/** default constructor */
	public Sbtype() {
	}

	/** full constructor */
	public Sbtype( String names, List<Smalltype> smalltypes) {
		this.names = names;
		this.smalltypes = smalltypes;
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

	public List<Smalltype> getSmalltypes() {
		return this.smalltypes;
	}

	public void setSmalltypes(List<Smalltype> smalltypes) {
		this.smalltypes = smalltypes;
	}

}