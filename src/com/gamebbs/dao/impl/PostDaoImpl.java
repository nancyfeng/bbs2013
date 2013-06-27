package com.gamebbs.dao.impl;

import java.sql.SQLException;

import java.util.List;

import javax.annotation.Resource;

import org.hibernate.HibernateException;
import org.hibernate.Session;
import org.springframework.orm.hibernate3.HibernateCallback;
import org.springframework.orm.hibernate3.HibernateTemplate;
import org.springframework.stereotype.Component;

import com.gamebbs.dao.PostDao;
import com.gamebbs.model.Post;
import com.gamebbs.model.Reply;
import com.gamebbs.model.User;

@Component("postDao")
public class PostDaoImpl implements PostDao {

	private HibernateTemplate hibernateTemplate;

	public HibernateTemplate getHibernateTemplate() {
		return hibernateTemplate;
	}

	@Resource
	public void setHibernateTemplate(HibernateTemplate hibernateTemplate) {
		this.hibernateTemplate = hibernateTemplate;
	}
	
	public List<Post> list(int groudId) {

		return (List<Post>) this.hibernateTemplate.find("from Post p where p.groud.id = '" + groudId + "' order by p.id desc");
	}

	public String findPostAuthor(int userId){
		User u = this.hibernateTemplate.load(User.class, userId);
		return u.getUsername();
	}

	public void save(Post post) {
		 this.hibernateTemplate.save(post);
	}

	public Post findPostById(int postId) {
		Post post = this.hibernateTemplate.load(Post.class, postId);
		return post;
	}

	public void update(Post post) {
		this.hibernateTemplate.update(post);
	}

	public void saveReply(Reply reply) {
		this.hibernateTemplate.save(reply);
		
	}

	public List listReply(final int postId, final int offiset) {
		List list=getHibernateTemplate().executeFind(new HibernateCallback(){
			public Object doInHibernate(Session session)
					throws HibernateException, SQLException {
				List list=session.createQuery("from Reply r where r.post.id = '" + postId + "' order by r.id desc")
					.setFirstResult((offiset-1)*6)
					.setMaxResults(6)
					.list();
				return list;
			}
		});
		return list;
	}

	public List QueryPage(final int offiset, final int groudId){
		List list=getHibernateTemplate().executeFind(new HibernateCallback(){
			
			public Object doInHibernate(Session session)
					throws HibernateException, SQLException {
				List list=session.createQuery("from Post p where p.groud.id = '" + groudId + "' order by p.id desc")
					.setFirstResult((offiset-1)*10)
					.setMaxResults(10)
					.list();
				return list;
			}
		});
		return list;
	}
	
	public int getCount(int groudId){
		int count = ((Long)this.hibernateTemplate.iterate("select count(*) from Post p where p.groud.id = '" + groudId + "'").next()).intValue();
		return count;
	}

	public int getReplyCount(int postId) {
		int count = ((Long)this.hibernateTemplate.iterate("select count(*) from Reply r where r.post.id = '" + postId + "'").next()).intValue();
		return count;
	}

	public int getPostCount(int userId) {
		int count = ((Long)this.hibernateTemplate.iterate("select count(*) from Post p where p.user.id = '" + userId + "'").next()).intValue();
		return count;
	}

	public List listAll(final int offiset) {
		List list=getHibernateTemplate().executeFind(new HibernateCallback(){
			
			public Object doInHibernate(Session session)
					throws HibernateException, SQLException {
				List list=session.createQuery("from Post p order by p.id desc")
					.setFirstResult((offiset-1)*10)
					.setMaxResults(10)
					.list();
				return list;
			}
		});
		return list;
	}

	public int getAllPostCount() {
		int count = ((Long)this.hibernateTemplate.iterate("select count(*) from Post").next()).intValue();
		return count;
	}

	public void delete(Post post) {
		this.hibernateTemplate.delete(post);
	}

	public List userQueryPage(final int offiset, final int userId){
		List userlist=getHibernateTemplate().executeFind(new HibernateCallback(){
			
			public Object doInHibernate(Session session)
					throws HibernateException, SQLException {
				List userlist=session.createQuery("from Post p where p.user.id = '" + userId + "' order by p.id desc")
					.setFirstResult((offiset-1)*10)
					.setMaxResults(10)
					.list();
				return userlist;
			}
		});
		return userlist;
	}
}