package com.gamebbs.action;

import java.util.List;

import java.util.Map;
import com.gamebbs.model.Groud;
import com.gamebbs.model.Post;
import com.gamebbs.model.Reply;
import com.gamebbs.model.User;
import com.gamebbs.service.GroudService;
import com.gamebbs.service.PostService;
import com.gamebbs.service.UserService;
import com.gamebbs.vo.PostInfo;
import com.gamebbs.vo.UserInfo;
import com.opensymphony.xwork2.ActionContext;
import com.opensymphony.xwork2.ActionSupport;
import com.opensymphony.xwork2.ModelDriven;

//帖
public class PostAction extends ActionSupport implements ModelDriven {
	private List<Post> posts;
	private PostService postService;
	private UserService userService;
	private PostInfo postInfo = new PostInfo();
	private UserInfo userInfo = new UserInfo();
	private Post post;
	private User user;
	private Groud groud;
	private Reply reply;
	private List<Reply> replys;
	private GroudService groudService;
	private int page;

	ActionContext actionContext = ActionContext.getContext();
	Map session = actionContext.getSession();

	public String list() {
		posts = postService.listAndPage(postInfo.getOffiset(), postInfo.getGroudId());// 根据组列出帖子、分页
		session.put("groudId", postInfo.getGroudId());
		groud = groudService.findGroud(postInfo.getGroudId());
		int count = postService.getCount(postInfo.getGroudId());// 记录总数
		page = count % 10 == 0 ? count / 10 : count / 10 + 1;// 页数
		return "list";
	}


	public String userlist() {
		posts = postService.userlist(postInfo.getOffiset(), postInfo.getUserId());// 根据userID列出帖子、分页
		session.put("userId", postInfo.getUserId());
		user = userService.findUser(userInfo.getUserId());
		int count = postService.getCount(postInfo.getGroudId());// 记录总数
		page = count % 10 == 0 ? count / 10 : count / 10 + 1;// 页数
		return "upostlist";
	}
	
	public String listOne() {
		session.put("postId", postInfo.getPostId());
		groud = groudService.findGroud((Integer)session.get("groudId"));//得到组名
		post = postService.listOne(postInfo.getPostId());// 列出主贴
		user = userService.listOne(post.getUser().getUsername());
		int count = postService.getReplyCount(postInfo.getPostId());// 记录总数
		page = count % 6 == 0 ? count / 6 : count / 6 + 1;// 页数
		replys = postService.listReply(postInfo.getPostId(), postInfo.getOffiset());// 列出回复帖子
		post.setReadTime(post.getReadTime() + 1);
		postService.updatePost(post);// 添加浏览次数
		return "listOne";
	}

	public String addInput() {
		groud = groudService.findGroud((Integer) session.get("groudId"));
		return "addInput";
	}

	public String add() {
		user = new User();
		user.setId((Integer) session.get("userId"));
		groud = new Groud();
		groud.setId((Integer) session.get("groudId"));
		post = new Post();
		post.setTitle(postInfo.getTitle());
		post.setContext(postInfo.getContext());
		post.setCreateTime(postInfo.getNowTime());
		post.setUser(user);
		post.setGroud(groud);
		postService.add(post);
		User u = userService.listOne((String) session.get("username"));
		u.setScore(u.getScore() + 5);// 发帖加5分
		u.setPostTime(u.getPostTime() + 1);//发帖数加1
		userService.update(u);
		return "add";
	}

	public String reply() {
		reply = new Reply();
		user = new User();
		post = new Post();
		post.setId(postInfo.getPostId());
		user.setId((Integer) session.get("userId"));
		reply.setUser(user);
		reply.setPost(post);
		reply.setContext(postInfo.getContext());
		reply.setReplyTime(postInfo.getNowTime());
		postService.addReply(reply);
		Post p = postService.listOne(postInfo.getPostId());
		User u = userService.listOne((String) session.get("username"));
		u.setScore(u.getScore() + 1);//积分加1
		u.setReplyTime(u.getReplyTime() + 1);//用户回复次数加1
		p.setReplyTime(p.getReplyTime() + 1);//帖子回复次数加一
		postService.updatePost(p);
		return "reply";
	}

	public List<Post> getPosts() {
		return posts;
	}

	public void setPosts(List<Post> posts) {
		this.posts = posts;
	}

	public PostService getPostService() {
		return postService;
	}

	public void setPostService(PostService postService) {
		this.postService = postService;
	}

	public Object getModel() {

		return postInfo;
	}

	public PostInfo getPostInfo() {
		return postInfo;
	}

	public void setPostInfo(PostInfo postInfo) {
		this.postInfo = postInfo;
	}

	public Post getPost() {
		return post;
	}

	public void setPost(Post post) {
		this.post = post;
	}

	public User getUser() {
		return user;
	}

	public void setUser(User user) {
		this.user = user;
	}

	public Groud getGroud() {
		return groud;
	}

	public void setGroud(Groud groud) {
		this.groud = groud;
	}

	public UserService getUserService() {
		return userService;
	}

	public void setUserService(UserService userService) {
		this.userService = userService;
	}

	public Reply getReply() {
		return reply;
	}

	public void setReply(Reply reply) {
		this.reply = reply;
	}

	public List<Reply> getReplys() {
		return replys;
	}

	public void setReplys(List<Reply> replys) {
		this.replys = replys;
	}

	public GroudService getGroudService() {
		return groudService;
	}

	public void setGroudService(GroudService groudService) {
		this.groudService = groudService;
	}

	public int getPage() {
		return page;
	}

	public void setPage(int page) {
		this.page = page;
	}

}
