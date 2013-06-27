package com.gamebbs.dao;

import java.util.List;

import com.gamebbs.model.Groud;
import com.gamebbs.model.Plate;

public interface GroudDao {

	Groud findGroudNameAndPlateName(int groudId);

	List<Plate> findAllPlate();
	
}
