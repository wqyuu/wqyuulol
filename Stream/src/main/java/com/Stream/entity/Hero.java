package com.Stream.entity;


import java.util.ArrayList;
import java.util.HashSet;
import java.util.List;
import java.util.Set;


public class Hero extends BaseEntity implements java.io.Serializable {

	// Fields

	private Long id;
	private String name;
	private String title;
	private String picture;
	private String background;
	private String skill;
	private String skill2;
	private List<Herotype> herotypes = new ArrayList<Herotype>(0);
	private List<Herospell> herospells = new ArrayList<Herospell>(0);
	private List<Items> itemses = new ArrayList<Items>(0);
	private List<Skin> skins = new ArrayList<Skin>(0);
	private List<Heroinfo> heroinfos = new ArrayList<Heroinfo>(0);

	// Constructors

	/** default constructor */
	public Hero() {
	}

	/** full constructor */
	public Hero(String name, String title, String picture, String background,
			String skill, String skill2, List<Herotype> herotypes,
			List<Herospell> herospells, List<Items> itemses, List<Skin> skins,
			List<Heroinfo> heroinfos) {
		this.name = name;
		this.title = title;
		this.picture = picture;
		this.background = background;
		this.skill = skill;
		this.skill2 = skill2;
		this.herotypes = herotypes;
		this.herospells = herospells;
		this.itemses = itemses;
		this.skins = skins;
		this.heroinfos = heroinfos;
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

	public String getTitle() {
		return this.title;
	}

	public void setTitle(String title) {
		this.title = title;
	}

	public String getPicture() {
		return this.picture;
	}

	public void setPicture(String picture) {
		this.picture = picture;
	}

	public String getBackground() {
		return this.background;
	}

	public void setBackground(String background) {
		this.background = background;
	}

	public String getSkill() {
		return this.skill;
	}

	public void setSkill(String skill) {
		this.skill = skill;
	}

	public String getSkill2() {
		return this.skill2;
	}

	public void setSkill2(String skill2) {
		this.skill2 = skill2;
	}

	public List<Herotype> getHerotypes() {
		return this.herotypes;
	}

	public void setHerotypes(List<Herotype> herotypes) {
		this.herotypes = herotypes;
	}

	public List<Herospell> getHerospells() {
		return this.herospells;
	}

	public void setHerospells(List<Herospell> herospells) {
		this.herospells = herospells;
	}

	
	public List<Items> getItemses() {
		return this.itemses;
	}

	public void setItemses(List<Items> itemses) {
		this.itemses = itemses;
	}

	public List<Skin> getSkins() {
		return this.skins;
	}

	public void setSkins(List<Skin> skins) {
		this.skins = skins;
	}

	public List<Heroinfo> getHeroinfos() {
		return this.heroinfos;
	}

	public void setHeroinfos(List<Heroinfo> heroinfos) {
		this.heroinfos = heroinfos;
	}

}