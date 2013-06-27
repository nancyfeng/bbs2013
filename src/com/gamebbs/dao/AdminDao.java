package com.gamebbs.dao;

import com.gamebbs.model.Admin;

public interface AdminDao {

	public void save(Admin admin);

	public Admin listOne(int userId);
	
}
