package com.gamebbs.service;

import com.gamebbs.model.Admin;


public interface AdminService {

	public void add(Admin admin);

	public Admin find(int userId);

}
