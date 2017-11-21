package com.Stream.entity;


public class NoticSkill implements java.io.Serializable {

	// Fields

	private Long id;
	private NoticHero noticHero;
	private String names;
	private String title1;
	private String img;

	// Constructors

	/** default constructor */
	public NoticSkill() {
	}

	/** full constructor */
	public NoticSkill(NoticHero noticHero, String names, String title1,
			String img) {
		this.noticHero = noticHero;
		this.names = names;
		this.title1 = title1;
		this.img = img;
	}
	public Long getId() {
		return this.id;
	}

	public void setId(Long id) {
		this.id = id;
	}
	public NoticHero getNoticHero() {
		return this.noticHero;
	}

	public void setNoticHero(NoticHero noticHero) {
		this.noticHero = noticHero;
	}

	public String getNames() {
		return this.names;
	}

	public void setNames(String names) {
		this.names = names;
	}

	public String getTitle1() {
		return this.title1;
	}

	public void setTitle1(String title1) {
		this.title1 = title1;
	}

	public String getImg() {
		return this.img;
	}

	public void setImg(String img) {
		this.img = img;
	}

}