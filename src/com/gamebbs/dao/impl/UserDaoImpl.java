package com.gamebbs.dao.impl;

import java.sql.SQLException;
import java.util.List;

import javax.annotation.Resource;

import org.hibernate.HibernateException;
import org.hibernate.Session;
import org.springframework.orm.hibernate3.HibernateCallback;
import org.springframework.orm.hibernate3.HibernateTemplate;
import org.springframework.stereotype.Component;

import com.gamebbs.dao.UserDao;
import com.gamebbs.model.Groud;
import com.gamebbs.model.Plate;
import com.gamebbs.model.User;

@Component("userDao")
public class UserDaoImpl implements UserDao {

	private HibernateTemplate hibernateTemplate;

	public HibernateTemplate getHibernateTemplate() {
		return hibernateTemplate;
	}

	@Resource
	public void setHibernateTemplate(HibernateTemplate hibernateTemplate) {
		this.hibernateTemplate = hibernateTemplate;
	}

	public void save(User u) {
		hibernateTemplate.save(u);
	}

	public boolean checkUserExistByName(String username) {
		List<User> users = hibernateTemplate.find("from User u where u.username = '" + username + "'");

		if (users != null && users.size() > 0) {
			return true;
		}
		return false;
	}

	public int findUserIdByName(String username) {
		List<User> users = hibernateTemplate.find("from User u where u.username = '" + username + "'");
		int id = 0;
		for(User user : users){
			id = user.getId();
		}
		return id;
	}
	
	public List list(final int offiset) {
		List list=getHibernateTemplate().executeFind(new HibernateCallback(){
			public Object doInHibernate(Session session)
					throws HibernateException, SQLException {
				List list=session.createQuery("from User")
					.setFirstResult((offiset-1)*10)
					.setMaxResults(10)
					.list();
				return list;
			}
		});
		return list;
	}
	
	public int getUserCount(){
		int count = ((Long)this.hibernateTemplate.iterate("select count(*) from User").next()).intValue();
		return count;
	}
	

	public User listOne(int userId) {
		return (User) this.hibernateTemplate.load(User.class, userId);
	}

	public boolean checkUsernameAndPassword(String username, String password) {
		List<User> users = hibernateTemplate.find("from User u where u.username = '" + username + "'" + " and u.password = '" + password + "'");

		if (users != null && users.size() > 0) {
			return true;
		}
		return false;
	}

	public void update(User user) {
		this.hibernateTemplate.update(user);
	}

	public void userDelete(User user) {
		this.hibernateTemplate.delete(user);
	}


	public User findUserNameAndPlateName(int userId) {
		
		return this.hibernateTemplate.load(User.class, userId);
	}

	public List<Plate> findAllPlate() {
		
		return (List<Plate>)this.hibernateTemplate.find("from Plate");
	}


	
	

}
