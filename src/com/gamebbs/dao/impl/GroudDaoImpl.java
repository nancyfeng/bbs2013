package com.gamebbs.dao.impl;

import java.util.List;


import javax.annotation.Resource;

import org.springframework.orm.hibernate3.HibernateTemplate;
import org.springframework.stereotype.Component;

import com.gamebbs.dao.GroudDao;
import com.gamebbs.model.Groud;
import com.gamebbs.model.Plate;

@Component("groudDao")
public class GroudDaoImpl implements GroudDao {

	private HibernateTemplate hibernateTemplate;

	public HibernateTemplate getHibernateTemplate() {
		return hibernateTemplate;
	}

	@Resource
	public void setHibernateTemplate(HibernateTemplate hibernateTemplate) {
		this.hibernateTemplate = hibernateTemplate;
	}

	public Groud findGroudNameAndPlateName(int groudId) {
		
		return this.hibernateTemplate.load(Groud.class, groudId);
	}

	public List<Plate> findAllPlate() {
		
		return (List<Plate>)this.hibernateTemplate.find("from Plate");
	}
	
	

}
