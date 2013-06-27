package com.gamebbs.service.impl;

import java.util.List;

import javax.annotation.Resource;

import org.springframework.stereotype.Component;

import com.gamebbs.dao.UserDao;
import com.gamebbs.model.Groud;
import com.gamebbs.model.Plate;
import com.gamebbs.model.User;
import com.gamebbs.service.UserService;

@Component("userService")
public class UserServiceImpl implements UserService{

	private UserDao userDao;
	
	
	public UserDao getUserDao() {
		return userDao;
	}

	@Resource
	public void setUserDao(UserDao userDao) {
		this.userDao = userDao;
	}

	public void add(User u) throws Exception {
		userDao.save(u);
	}

	public boolean exist(User u) throws Exception {
		return userDao.checkUserExistByName(u.getUsername());
	}

	public List list(int offiset) {
		return userDao.list(offiset);
	}

	public User listOne(String username) {
		return userDao.listOne(userDao.findUserIdByName(username));
	}

	public boolean login(User u) throws Exception {
		return userDao.checkUsernameAndPassword(u.getUsername(), u.getPassword());
	}



	public void update(User user) {
		userDao.update(user);
		
	}

	public int getUserCount() {
		return userDao.getUserCount();
		
	}

	public void delete(User user) {
		userDao.userDelete(user);
		
	}

	public User getInfo(int userId) {
		return userDao.listOne(userId);
		
	}



	
public User findUser(int userId) {
		
		return this.userDao.findUserNameAndPlateName(userId);
	}

	public List<Plate> findAllPlate() {
		
		return this.userDao.findAllPlate();
	}
	
	



	
}
