package com.Stream.entity;

import java.util.List;

import org.springframework.web.multipart.MultipartFile;

/**
 * 游戏
 */
public class Game extends BaseEntity{

    private int id;

    private String creater;

    private String name;

    private String comm;

    private String systemcfg;

    private Double price;

    private Double discount;

    private int stat;
    
    private List<Kind> kind;
    private List<Tag> tag;
    private List<KindGame> kg;
    
    private String img;
    private MultipartFile file;


	public List<KindGame> getKg() {
		return kg;
	}

	public void setKg(List<KindGame> kg) {
		this.kg = kg;
	}



	public Game(int id, String creater, String name, String comm, String systemcfg, Double price, Double discount,
			int stat, List<Kind> kind, List<Tag> tag, List<KindGame> kg, String img, MultipartFile file) {
		super();
		this.id = id;
		this.creater = creater;
		this.name = name;
		this.comm = comm;
		this.systemcfg = systemcfg;
		this.price = price;
		this.discount = discount;
		this.stat = stat;
		this.kind = kind;
		this.tag = tag;
		this.kg = kg;
		this.img = img;
		this.file = file;
	}

	public String getImg() {
		return img;
	}

	public void setImg(String img) {
		this.img = img;
	}

	public MultipartFile getFile() {
		return file;
	}

	public void setFile(MultipartFile file) {
		this.file = file;
	}

	public List<Tag> getTag() {
		return tag;
	}

	public void setTag(List<Tag> tag) {
		this.tag = tag;
	}

	public Game() {
		super();
	}

	public int getId() {
		return id;
	}

	public void setId(int id) {
		this.id = id;
	}

	public String getComm() {
		return comm;
	}

	public void setComm(String comm) {
		this.comm = comm;
	}

	public String getCreater() {
		return creater;
	}

	public void setCreater(String creater) {
		this.creater = creater;
	}

	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}


	public String getSystemcfg() {
		return systemcfg;
	}

	public void setSystemcfg(String systemcfg) {
		this.systemcfg = systemcfg;
	}

	public Double getPrice() {
		return price;
	}

	public void setPrice(Double price) {
		this.price = price;
	}

	public Double getDiscount() {
		return discount;
	}

	public void setDiscount(Double discount) {
		this.discount = discount;
	}

	public int getStat() {
		return stat;
	}

	public void setStat(int stat) {
		this.stat = stat;
	}

	public List<Kind> getKind() {
		return kind;
	}

	public void setKind(List<Kind> kind) {
		this.kind = kind;
	}
    
    

}