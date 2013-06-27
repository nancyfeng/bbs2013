package com.gamebbs.dao;

import java.util.List;

import com.gamebbs.model.Groud;
import com.gamebbs.model.Plate;
import com.gamebbs.model.User;

public interface UserDao {
	public void save(User u);
	public boolean checkUserExistByName(String username);
	public List list(final int offiset) ;
	public User listOne(int userId) ;
	public int findUserIdByName(String username) ;
	public boolean checkUsernameAndPassword(String username,String password);
	public void update(User user);
	public int getUserCount();
	public void userDelete(User user);
	User findUserNameAndPlateName(int userId);

	List<Plate> findAllPlate();
}
