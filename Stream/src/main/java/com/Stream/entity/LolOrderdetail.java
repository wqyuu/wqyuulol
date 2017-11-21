package com.Stream.entity;

import java.util.Date;


public class LolOrderdetail implements java.io.Serializable {

	// Fields

	private Long odId;
	private LolOrder lolOrder;
	private Shouban shouban;
	private Long PNumber;
	private Long total;
	private Date ODate;

	// Constructors

	/** default constructor */
	public LolOrderdetail() {
	}

	/** full constructor */
	public LolOrderdetail(LolOrder lolOrder, Shouban shouban, Long PNumber,
			Long total, Date ODate) {
		this.lolOrder = lolOrder;
		this.shouban = shouban;
		this.PNumber = PNumber;
		this.total = total;
		this.ODate = ODate;
	}

	public Long getOdId() {
		return this.odId;
	}

	public void setOdId(Long odId) {
		this.odId = odId;
	}

	public LolOrder getLolOrder() {
		return this.lolOrder;
	}

	public void setLolOrder(LolOrder lolOrder) {
		this.lolOrder = lolOrder;
	}

	public Shouban getShouban() {
		return this.shouban;
	}

	public void setShouban(Shouban shouban) {
		this.shouban = shouban;
	}

	public Long getPNumber() {
		return this.PNumber;
	}

	public void setPNumber(Long PNumber) {
		this.PNumber = PNumber;
	}

	public Long getTotal() {
		return this.total;
	}

	public void setTotal(Long total) {
		this.total = total;
	}

	public Date getODate() {
		return this.ODate;
	}

	public void setODate(Date ODate) {
		this.ODate = ODate;
	}

}