package com.Stream.entity;


public class Leveltip implements java.io.Serializable {

	// Fields

	private Long id;
	private Herospell herospell;
	private String label;

	// Constructors

	/** default constructor */
	public Leveltip() {
	}

	/** full constructor */
	public Leveltip(Herospell herospell, String label) {
		this.herospell = herospell;
		this.label = label;
	}
	public Long getId() {
		return this.id;
	}

	public void setId(Long id) {
		this.id = id;
	}
	public Herospell getHerospell() {
		return this.herospell;
	}

	public void setHerospell(Herospell herospell) {
		this.herospell = herospell;
	}

	public String getLabel() {
		return this.label;
	}

	public void setLabel(String label) {
		this.label = label;
	}

}