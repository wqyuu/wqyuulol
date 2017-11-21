package com.Stream.entity;

import java.util.List;

public class Kind extends BaseEntity {
    private Integer kid;

    private String kname;

    private List<Game> game;
    private List<KindGame> kg;
    public Kind() {
		super();
	}


	public Kind(Integer kid, String kname, List<Game> game, List<KindGame> kg) {
		super();
		this.kid = kid;
		this.kname = kname;
		this.game = game;
		this.kg = kg;
	}


	public List<KindGame> getKg() {
		return kg;
	}


	public void setKg(List<KindGame> kg) {
		this.kg = kg;
	}


	public Integer getKid() {
		return kid;
	}

	public void setKid(Integer kid) {
		this.kid = kid;
	}

	public String getKname() {
		return kname;
	}

	public void setKname(String kname) {
		this.kname = kname;
	}

	public List<Game> getGame() {
		return game;
	}

	public void setGame(List<Game> game) {
		this.game = game;
	}
    
}