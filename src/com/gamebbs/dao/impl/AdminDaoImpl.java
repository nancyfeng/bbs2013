package com.gamebbs.dao.impl;


import javax.annotation.Resource;

import org.springframework.orm.hibernate3.HibernateTemplate;
import org.springframework.stereotype.Component;

import com.gamebbs.dao.AdminDao;
import com.gamebbs.model.Admin;

@Component("adminDao")
public class AdminDaoImpl implements AdminDao {
	private HibernateTemplate hibernateTemplate;

	public HibernateTemplate getHibernateTemplate() {
		return hibernateTemplate;
	}

	@Resource
	public void setHibernateTemplate(HibernateTemplate hibernateTemplate) {
		this.hibernateTemplate = hibernateTemplate;
	}

	public void save(Admin admin) {
		this.hibernateTemplate.save(admin);
	}

	public Admin listOne(int userId) {
		return (Admin) this.hibernateTemplate.find("from Admin a where a.user.id = '" + userId + "'");
	}

}
