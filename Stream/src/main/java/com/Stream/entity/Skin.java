package com.Stream.entity;


public class Skin implements java.io.Serializable {

	// Fields

	private Long id;
	private Hero hero;
	private String picture;
	private Long num;
	private String name;

	// Constructors

	/** default constructor */
	public Skin() {
	}

	/** minimal constructor */
	public Skin(Long id) {
		this.id = id;
	}

	/** full constructor */
	public Skin(Long id, Hero hero, String picture, Long num, String name) {
		this.id = id;
		this.hero = hero;
		this.picture = picture;
		this.num = num;
		this.name = name;
	}

	// Property accessors
	public Long getId() {
		return this.id;
	}

	public void setId(Long id) {
		this.id = id;
	}

	public Hero getHero() {
		return this.hero;
	}

	public void setHero(Hero hero) {
		this.hero = hero;
	}

	public String getPicture() {
		return this.picture;
	}

	public void setPicture(String picture) {
		this.picture = picture;
	}

	public Long getNum() {
		return this.num;
	}

	public void setNum(Long num) {
		this.num = num;
	}

	public String getName() {
		return this.name;
	}

	public void setName(String name) {
		this.name = name;
	}

}