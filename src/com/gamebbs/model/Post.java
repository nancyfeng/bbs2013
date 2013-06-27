package com.gamebbs.model;


import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;
import javax.persistence.Table;

@Entity
@Table(name="post")
public class Post {
	private int id;
	private String title;	//标题
	private String context;	//内容
	private String createTime;	//发帖时间
	private Groud groud; 	//组
	private User user;	// 用户类
	private int replyTime; //回复次数
	private int readTime;	//浏览次数
	
	@ManyToOne
	@JoinColumn(name="user_id")
	public User getUser() {
		return user;
	}
	public void setUser(User user) {
		this.user = user;
	}
	@ManyToOne
	@JoinColumn(name="groud_id")
	public Groud getGroud() {
		return groud;
	}
	public void setGroud(Groud groud) {
		this.groud = groud;
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
	public String getContext() {
		return context;
	}
	public void setContext(String context) {
		this.context = context;
	}
	public String getCreateTime() {
		return createTime;
	}
	public void setCreateTime(String createTime) {
		this.createTime = createTime;
	}
	
	public int getReplyTime() {
		return replyTime;
	}
	public void setReplyTime(int replyTime) {
		this.replyTime = replyTime;
	}
	public int getReadTime() {
		return readTime;
	}
	public void setReadTime(int readTime) {
		this.readTime = readTime;
	}
	
}
