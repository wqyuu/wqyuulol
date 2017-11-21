package com.Stream.entity;


import java.util.ArrayList;
import java.util.ArrayList;
import java.util.List;
import java.util.Set;

public class Shouban implements java.io.Serializable {

	// Fields

	private Long id;
	private String names;
	private Long price;
	private String img;
	private Long hot;
	private Long numbers;
	private String onew;
	private String status;
	private List<LolCarshop> lolCarshops = new ArrayList<LolCarshop>(0);
	private List<Smalltype> smalltypes = new ArrayList<Smalltype>(0);
	private List<LolOrderdetail> lolOrderdetails = new ArrayList<LolOrderdetail>(0);
	private List<Scomment> scomments = new ArrayList<Scomment>(0);

	// Constructors

	/** default constructor */
	public Shouban() {
	}

	/** full constructor */
	public Shouban(String names, Long price, String img, Long hot,
			Long numbers, String onew, String status,
			List<LolCarshop> lolCarshops, List<Smalltype> smalltypes,
			List<LolOrderdetail> lolOrderdetails, List<Scomment> scomments) {
		this.names = names;
		this.price = price;
		this.img = img;
		this.hot = hot;
		this.numbers = numbers;
		this.onew = onew;
		this.status = status;
		this.lolCarshops = lolCarshops;
		this.smalltypes = smalltypes;
		this.lolOrderdetails = lolOrderdetails;
		this.scomments = scomments;
	}

	// Property accessors
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

	public Long getPrice() {
		return this.price;
	}

	public void setPrice(Long price) {
		this.price = price;
	}

	public String getImg() {
		return this.img;
	}

	public void setImg(String img) {
		this.img = img;
	}

	public Long getHot() {
		return this.hot;
	}

	public void setHot(Long hot) {
		this.hot = hot;
	}

	public Long getNumbers() {
		return this.numbers;
	}

	public void setNumbers(Long numbers) {
		this.numbers = numbers;
	}

	public String getOnew() {
		return this.onew;
	}

	public void setOnew(String onew) {
		this.onew = onew;
	}
	public String getStatus() {
		return this.status;
	}

	public void setStatus(String status) {
		this.status = status;
	}

	public List<LolCarshop> getLolCarshops() {
		return this.lolCarshops;
	}

	public void setLolCarshops(List<LolCarshop> lolCarshops) {
		this.lolCarshops = lolCarshops;
	}

	public List<Smalltype> getSmalltypes() {
		return this.smalltypes;
	}

	public void setSmalltypes(List<Smalltype> smalltypes) {
		this.smalltypes = smalltypes;
	}

	public List<LolOrderdetail> getLolOrderdetails() {
		return this.lolOrderdetails;
	}

	public void setLolOrderdetails(List<LolOrderdetail> lolOrderdetails) {
		this.lolOrderdetails = lolOrderdetails;
	}

	public List<Scomment> getScomments() {
		return this.scomments;
	}

	public void setScomments(List<Scomment> scomments) {
		this.scomments = scomments;
	}

}