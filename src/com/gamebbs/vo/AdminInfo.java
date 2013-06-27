package com.gamebbs.vo;

import java.text.SimpleDateFormat;
import java.util.Date;

public class AdminInfo {
	private String context;
	private int plateId;
	private int offiset;
	private int userId;
	private int postId;
	
	public String getContext() {
		return context;
	}

	public void setContext(String context) {
		this.context = context;
	}

	public String getNowTime() {
		SimpleDateFormat sdf = new SimpleDateFormat("yyyy-MM-dd  HH:mm:ss");
		return sdf.format(new Date());
	}

	

	public int getPlateId() {
		return plateId;
	}

	public void setPlateId(int plateId) {
		this.plateId = plateId;
	}

	public int getOffiset() {
		return offiset;
	}

	public void setOffiset(int offiset) {
		this.offiset = offiset;
	}

	public int getUserId() {
		return userId;
	}

	public void setUserId(int userId) {
		this.userId = userId;
	}

	public int getPostId() {
		return postId;
	}

	public void setPostId(int postId) {
		this.postId = postId;
	}

	
}
