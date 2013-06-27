package com.gamebbs.service;

import java.util.List;

import com.gamebbs.model.Groud;
import com.gamebbs.model.Plate;
import com.gamebbs.model.User;

public interface UserService {
	public abstract boolean exist(User u) throws Exception;
	public abstract void add(User u) throws Exception;
	public List<User> list(int offiset) ;
	public User listOne(String username) ;
	public boolean login(User u)throws Exception ;
	public abstract void update(User user);
	public abstract int getUserCount();
	public abstract void delete(User user);
	public abstract User getInfo(int userId);
	 User findUser(int userId);

	public List<Plate> findAllPlate();
}
