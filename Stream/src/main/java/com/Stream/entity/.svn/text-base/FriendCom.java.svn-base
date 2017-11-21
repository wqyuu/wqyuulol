package com.Stream.entity;

import java.util.HashSet;
import java.util.Set;

public class FriendCom implements java.io.Serializable {

	// Fields

	private Long friId;
	private String friCom;
	private Set<People> peoples = new HashSet<People>(0);

	// Constructors

	/** default constructor */
	public FriendCom() {
	}

	/** full constructor */
	public FriendCom(String friCom, Set<People> peoples) {
		this.friCom = friCom;
		this.peoples = peoples;
	}

	public Long getFriId() {
		return this.friId;
	}

	public void setFriId(Long friId) {
		this.friId = friId;
	}

	public String getFriCom() {
		return this.friCom;
	}

	public void setFriCom(String friCom) {
		this.friCom = friCom;
	}

	public Set<People> getPeoples() {
		return this.peoples;
	}

	public void setPeoples(Set<People> peoples) {
		this.peoples = peoples;
	}

}