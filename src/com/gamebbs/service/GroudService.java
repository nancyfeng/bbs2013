package com.gamebbs.service;

import java.util.List;

import com.gamebbs.model.Groud;
import com.gamebbs.model.Plate;

public interface GroudService {

	Groud findGroud(int groudId);

	public List<Plate> findAllPlate();
	
}
