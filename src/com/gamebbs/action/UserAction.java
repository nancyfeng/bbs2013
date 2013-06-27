package com.gamebbs.action;

import java.util.List;
import java.util.Map;


import com.gamebbs.model.User;
import com.gamebbs.service.UserService;
import com.gamebbs.vo.UserInfo;
import com.opensymphony.xwork2.ActionContext;
import com.opensymphony.xwork2.ActionSupport;
import com.opensymphony.xwork2.ModelDriven;

//用户
public class UserAction extends ActionSupport implements ModelDriven {
	private List<User> users;
	private UserService userService;
	private UserInfo userInfo = new UserInfo();
	private User user;

	ActionContext actionContext = ActionContext.getContext();
    Map session = actionContext.getSession();
	
	public User getUser() {
		return user;
	}

	public void setUser(User user) {
		this.user = user;
	}

	public UserService getUserService() {
		return userService;
	}

	public void setUserService(UserService userService) {
		this.userService = userService;
	}

	public UserInfo getUserInfo() {
		return userInfo;
	}

	public void setUserInfo(UserInfo userInfo) {
		this.userInfo = userInfo;
	}

	public List<User> getUsers() {
		return users;
	}

	public void setUsers(List<User> users) {
		this.users = users;
	}

	public String register() throws Exception {
		user = new User();
		user.setUsername(userInfo.getUsername());
		user.setAddress(userInfo.getAddress());
		user.setAnswer(userInfo.getAnswer());
		user.setEmail(userInfo.getEmail());
		user.setIdiograph(userInfo.getIdiograph());
		user.setIsOpen(userInfo.getIsopen());
		user.setPassword(userInfo.getPassword1());
		user.setQq(userInfo.getQq());
		user.setQuestion(userInfo.getQuestion());
		user.setRealname(userInfo.getRealname());
		user.setSex(userInfo.getSex());
		user.setBirthday(userInfo.getBirthday());
		if (userService.exist(user)) {
			return "registerFail";
		} else {
			userService.add(user);
			return "registerSuccess";
		}
	}

	public String registerInput() throws Exception {
		return "registerInput";
	}

	public String loginInput() throws Exception {
		return "loginInput";
	}

	public String login() throws Exception {
		
		user = new User();
		user.setUsername(userInfo.getUsername());
		user.setPassword(userInfo.getPassword1());
		if (userService.login(user)) {
			session.put("username", user.getUsername());
			session.put("userId", userService.listOne(user.getUsername()).getId());
			return "loginSuccess";
		}
		return "loginFail";
	}

	public String info(){
		user = userService.getInfo(userInfo.getUserId());
		return "info";
	}

	public String update() {
		user = userService.listOne((String)session.get("username"));
		user.setUsername(userInfo.getUsername());
		user.setAddress(userInfo.getAddress());
		user.setAnswer(userInfo.getAnswer());
		user.setEmail(userInfo.getEmail());
		user.setIdiograph(userInfo.getIdiograph());
		user.setIsOpen(userInfo.getIsopen());
		user.setPassword(userInfo.getPassword1());
		user.setQq(userInfo.getQq());
		user.setQuestion(userInfo.getQuestion());
		user.setRealname(userInfo.getRealname());
		user.setSex(userInfo.getSex());
		user.setBirthday(userInfo.getBirthday());
		userService.update(user);
		session.put("username", user.getUsername());
		return "update";
	}
	public String exit(){
		session.clear();
		return "exit";
	}
	public String updateInput(){
		user = userService.listOne((String)session.get("username"));
		return "updateInput";
	}
	

	public Object getModel() {
		return userInfo;
	}

 
}
