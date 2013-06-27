package com.gamebbs.vo;

import java.text.SimpleDateFormat;
import java.util.Date;

public class PostInfo {
	private int groudId;
	private String title;
	private String context;
	private String replyTime;
	private int postId;
	private int offiset;
	private int userId;
	
	
	public int getUserId() {
		return userId;
	}

	public void setUserId(int userId) {
		this.userId = userId;
	}

	public int getGroudId() {
		return groudId;
	}

	public void setGroudId(int groudId) {
		this.groudId = groudId;
	}

	public String getTitle() {
		return title;
	}

	public void setTitle(String title) {
		this.title = title;
	}

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

	
	public String getReplyTime() {
		return replyTime;
	}

	public void setReplyTime(String replyTime) {
		this.replyTime = replyTime;
	}

	public int getPostId() {
		return postId;
	}

	public void setPostId(int postId) {
		this.postId = postId;
	}

	public int getOffiset() {
		return offiset;
	}

	public void setOffiset(int offiset) {
		this.offiset = offiset;
	}

	
}
