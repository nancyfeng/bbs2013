package com.gamebbs.service.impl;

import java.util.List;

import javax.annotation.Resource;

import org.springframework.stereotype.Component;

import com.gamebbs.dao.PostDao;
import com.gamebbs.model.Post;
import com.gamebbs.model.Reply;
import com.gamebbs.service.PostService;

@Component("postService")
public class PostServiceImpl implements PostService{

	private PostDao postDao;
	
	
	public PostDao getPostDao() {
		return postDao;
	}

	@Resource
	public void setPostDao(PostDao postDao) {
		this.postDao = postDao;
	}


	public List<Post> list(int groudId) {
		return postDao.list(groudId);
	}

	public String findName(int userId){
		return postDao.findPostAuthor(userId);
	}

	public void add(Post post) {
		postDao.save(post);
	}

	public Post listOne(int postId) {
		return postDao.findPostById(postId);
	}

	public void updatePost(Post post) {
		postDao.update(post);
	}

	public void addReply(Reply reply) {
		postDao.saveReply(reply);
	}

	public List<Reply> listReply(int postId, int offiset) {
		
		return postDao.listReply(postId, offiset);
	}
 
	public List listAndPage(final int offiset, final int groudId){
		return postDao.QueryPage(offiset,groudId);
	}

	public int getCount(int groudId) {
		
		return postDao.getCount(groudId);
	}

	public int getReplyCount(int postId) {
		return postDao.getReplyCount(postId);
	}

	public int getPostCount(int userId) {
		return postDao.getPostCount(userId);
	}

	public List<Post> listALL(int offiset) {
		return postDao.listAll(offiset);
	}

	public int getAllPostCount() {
		return postDao.getAllPostCount();
	}

	public void delete(Post post) {
		postDao.delete(post);
	}

	public List<Post> userlist(int userId) {
	
		return null;
	}

	public List userlist(int offiset, int userId) {
		return postDao.userQueryPage(offiset,userId);
	}
}
