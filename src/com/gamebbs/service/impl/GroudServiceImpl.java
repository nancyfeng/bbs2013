package com.gamebbs.service.impl;

import java.util.List;


import javax.annotation.Resource;

import org.springframework.stereotype.Component;

import com.gamebbs.dao.GroudDao;
import com.gamebbs.model.Groud;
import com.gamebbs.model.Plate;
import com.gamebbs.service.GroudService;

@Component("groudService")
public class GroudServiceImpl implements GroudService{

	private GroudDao groudDao;
	
	
	public GroudDao getGroudDao() {
		return groudDao;
	}

	@Resource
	public void setGroudDao(GroudDao groudDao) {
		this.groudDao = groudDao;
	}

	public Groud findGroud(int groudId) {
		
		return this.groudDao.findGroudNameAndPlateName(groudId);
	}

	public List<Plate> findAllPlate() {
		
		return this.groudDao.findAllPlate();
	}




}
