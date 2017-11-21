package com.Stream.entity;


public class LolCarshop implements java.io.Serializable {

	// Fields

	private Long CId;
	private Shopqq shopqq;
	private Shouban shouban;
	private Long total;

	// Constructors

	/** default constructor */
	public LolCarshop() {
	}

	/** full constructor */
	public LolCarshop(Shopqq shopqq, Shouban shouban, Long total) {
		this.shopqq = shopqq;
		this.shouban = shouban;
		this.total = total;
	}

	// Property accessors
	public Long getCId() {
		return this.CId;
	}

	public void setCId(Long CId) {
		this.CId = CId;
	}

	public Shopqq getShopqq() {
		return this.shopqq;
	}

	public void setShopqq(Shopqq shopqq) {
		this.shopqq = shopqq;
	}
	public Shouban getShouban() {
		return this.shouban;
	}

	public void setShouban(Shouban shouban) {
		this.shouban = shouban;
	}

	public Long getTotal() {
		return this.total;
	}

	public void setTotal(Long total) {
		this.total = total;
	}

}