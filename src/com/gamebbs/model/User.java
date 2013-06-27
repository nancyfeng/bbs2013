package com.gamebbs.model;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.Id;

@Entity
public class User {
	private int id;
	private String username;	// 用户名
	private String password;	//密码
	private String email;		//邮箱
	private String question;	//提示问题
	private String answer;		//答案
	private String realname;	//真名
	private String birthday;	//生日
	private String qq;			//qq
	private String idiograph;	//个性签名
	private String address;		//地址
	private int sex;			//性别
	private int isOpen;			//是否公开信息
	private int score;			//积分
	private String type = "普通用户";	//用户类型
	private int postTime;		//发帖次数
	private int replyTime;		//回帖次数
	
	@Id
	@GeneratedValue
	public int getId() {
		return id;
	}
	public void setId(int id) {
		this.id = id;
	}
	
	
	public int getScore() {
		return score;
	}
	
	public String getUsername() {
		return username;
	}
	public void setUsername(String username) {
		this.username = username;
	}
	public String getPassword() {
		return password;
	}
	public void setPassword(String password) {
		this.password = password;
	}
	public String getEmail() {
		return email;
	}
	public void setEmail(String email) {
		this.email = email;
	}
	public String getQuestion() {
		return question;
	}
	public void setQuestion(String question) {
		this.question = question;
	}
	public String getAnswer() {
		return answer;
	}
	public void setAnswer(String answer) {
		this.answer = answer;
	}
	public String getRealname() {
		return realname;
	}
	public void setRealname(String realname) {
		this.realname = realname;
	}
	public String getBirthday() {
		return birthday;
	}
	public void setBirthday(String birthday) {
		this.birthday = birthday;
	}
	public String getQq() {
		return qq;
	}
	public void setQq(String qq) {
		this.qq = qq;
	}
	public String getIdiograph() {
		return idiograph;
	}
	public void setIdiograph(String idiograph) {
		this.idiograph = idiograph;
	}
	public String getAddress() {
		return address;
	}
	public void setAddress(String address) {
		this.address = address;
	}
	public int getSex() {
		return sex;
	}
	public void setSex(int sex) {
		this.sex = sex;
	}
	public int getIsOpen() {
		return isOpen;
	}
	public void setIsOpen(int isOpen) {
		this.isOpen = isOpen;
	}
	public void setScore(int score) {
		this.score = score;
	}
	public String getType() {
		return type;
	}
	public void setType(String type) {
		this.type = type;
	}
	public int getPostTime() {
		return postTime;
	}
	public void setPostTime(int postTime) {
		this.postTime = postTime;
	}
	public int getReplyTime() {
		return replyTime;
	}
	public void setReplyTime(int replyTime) {
		this.replyTime = replyTime;
	}
	
	
	
}
