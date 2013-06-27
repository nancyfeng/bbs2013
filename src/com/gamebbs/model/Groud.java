package com.gamebbs.model;


import javax.persistence.Entity;
import javax.persistence.FetchType;
import javax.persistence.GeneratedValue;
import javax.persistence.Id;
import javax.persistence.ManyToOne;

//分类
@Entity
public class Groud {
	private int id;
	private String title;	//分类
	private Plate plate;	//板块
	//private Category category2;
	
	
	@ManyToOne(fetch=FetchType.LAZY)
	public Plate getPlate() {
		return plate;
	}
	public void setPlate(Plate plate) {
		this.plate = plate;
	}
	@Id
	@GeneratedValue
	public int getId() {
		return id;
	}
	public void setId(int id) {
		this.id = id;
	}
	public String getTitle() {
		return title;
	}
	public void setTitle(String title) {
		this.title = title;
	}
	
}
