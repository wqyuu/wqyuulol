package com.Stream.entity;

import java.util.HashSet;
import java.util.Set;

public class People implements java.io.Serializable {

	// Fields

	private Long id;
	private Regional regional;
	private String name;
	private String picture;
	private Long shengwang;
	private Long dianjuan;
	private Long jinbi;
	private String levelName;
	private String levelPic;
	private Set<Peoinfo> peoinfos = new HashSet<Peoinfo>(0);
	private Set<FriendCom> friendComs = new HashSet<FriendCom>(0);

	// Constructors

	/** default constructor */
	public People() {
	}

	/** full constructor */
	public People(Regional regional, String name, String picture,
			Long shengwang, Long dianjuan, Long jinbi, String levelName,
			String levelPic, Set<Peoinfo> peoinfos, Set<FriendCom> friendComs) {
		this.regional = regional;
		this.name = name;
		this.picture = picture;
		this.shengwang = shengwang;
		this.dianjuan = dianjuan;
		this.jinbi = jinbi;
		this.levelName = levelName;
		this.levelPic = levelPic;
		this.peoinfos = peoinfos;
		this.friendComs = friendComs;
	}

	public Long getId() {
		return this.id;
	}

	public void setId(Long id) {
		this.id = id;
	}

	public Regional getRegional() {
		return this.regional;
	}

	public void setRegional(Regional regional) {
		this.regional = regional;
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

	public Long getShengwang() {
		return this.shengwang;
	}

	public void setShengwang(Long shengwang) {
		this.shengwang = shengwang;
	}

	public Long getDianjuan() {
		return this.dianjuan;
	}

	public void setDianjuan(Long dianjuan) {
		this.dianjuan = dianjuan;
	}

	public Long getJinbi() {
		return this.jinbi;
	}

	public void setJinbi(Long jinbi) {
		this.jinbi = jinbi;
	}

	public String getLevelName() {
		return this.levelName;
	}

	public void setLevelName(String levelName) {
		this.levelName = levelName;
	}

	public String getLevelPic() {
		return this.levelPic;
	}

	public void setLevelPic(String levelPic) {
		this.levelPic = levelPic;
	}

	public Set<Peoinfo> getPeoinfos() {
		return this.peoinfos;
	}

	public void setPeoinfos(Set<Peoinfo> peoinfos) {
		this.peoinfos = peoinfos;
	}

	public Set<FriendCom> getFriendComs() {
		return this.friendComs;
	}

	public void setFriendComs(Set<FriendCom> friendComs) {
		this.friendComs = friendComs;
	}

}