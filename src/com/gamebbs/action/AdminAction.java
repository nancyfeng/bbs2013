package com.gamebbs.action;

import java.util.List;
import java.util.Map;

import com.gamebbs.model.Admin;
import com.gamebbs.model.Groud;
import com.gamebbs.model.Plate;
import com.gamebbs.model.Post;
import com.gamebbs.model.User;
import com.gamebbs.service.AdminService;
import com.gamebbs.service.GroudService;
import com.gamebbs.service.PostService;
import com.gamebbs.service.UserService;
import com.gamebbs.vo.AdminInfo;
import com.opensymphony.xwork2.ActionContext;
import com.opensymphony.xwork2.ActionSupport;
import com.opensymphony.xwork2.ModelDriven;

//用户
public class AdminAction extends ActionSupport implements ModelDriven {
	private AdminInfo adminInfo = new AdminInfo();
	private Groud groud;
	private GroudService groudService;
	private UserService userService;
	private List<Plate> plates;
	private User user;
	private AdminService adminService;
	private Admin admin;
	private Plate plate;
	private List<User> users;
	private int page;
	private PostService postService;
	private List<Post> posts;
	private Post post;
	
	ActionContext actionContext = ActionContext.getContext();
    Map session = actionContext.getSession();
	
	public String addInput(){
		plates = groudService.findAllPlate();
		user = userService.listOne((String)session.get("username"));
		
		return "addInput";
	}
	public String add(){
		admin = new Admin();
		admin.setContext(adminInfo.getContext());
		plate = new Plate();
		plate.setId(adminInfo.getPlateId());
		user = new User();
		user.setId((Integer)session.get("userId"));
		admin.setUser(user);
		admin.setPlate(plate);
		user = userService.listOne((String)session.get("username"));
		user.setType("管理员");
		userService.update(user);
		adminService.add(admin);
		return "add";
	}
	
	public String list(){
		if(null!=session.get("username")){
		user = userService.listOne((String)session.get("username"));
		
		session.put("userType", user.getType());
		}
		return "list";
	}
	public String userList(){
		int count = userService.getUserCount();
		page = count % 10 == 0 ? count/10 : count/10 + 1;
		users = userService.list(adminInfo.getOffiset());
		return "userList";
	}
	
	public String userDelete(){
		user = new User();
		user.setId(adminInfo.getUserId());
		userService.delete(user);
		return "userDelete";
	}
	
	public String postList(){
		int count = postService.getAllPostCount();
		page = count % 10 == 0 ? count/10 : count/10 + 1;
		posts = postService.listALL(adminInfo.getOffiset());
		return "postList";
	}
	
	public String postDelete(){
		post = new Post();
		post.setId(adminInfo.getPostId());
		postService.delete(post);
		return "postDelete";
	}
	
	
	
	public AdminInfo getAdminInfo() {
		return adminInfo;
	}

	public void setAdminInfo(AdminInfo adminInfo) {
		this.adminInfo = adminInfo;
	}

	public Groud getGroud() {
		return groud;
	}

	public void setGroud(Groud groud) {
		this.groud = groud;
	}

	public GroudService getGroudService() {
		return groudService;
	}

	public void setGroudService(GroudService groudService) {
		this.groudService = groudService;
	}

	public List<Plate> getPlates() {
		return plates;
	}

	public void setPlates(List<Plate> plates) {
		this.plates = plates;
	}

	public User getUser() {
		return user;
	}

	public void setUser(User user) {
		this.user = user;
	}

	public UserService getUserService() {
		return userService;
	}

	public void setUserService(UserService userService) {
		this.userService = userService;
	}
	
	public AdminService getAdminService() {
		return adminService;
	}
	public void setAdminService(AdminService adminService) {
		this.adminService = adminService;
	}
	public Admin getAdmin() {
		return admin;
	}
	public void setAdmin(Admin admin) {
		this.admin = admin;
	}
	public Plate getPlate() {
		return plate;
	}
	public void setPlate(Plate plate) {
		this.plate = plate;
	}
	public Object getModel() {
		return adminInfo;
	}
	public List<User> getUsers() {
		return users;
	}
	public void setUsers(List<User> users) {
		this.users = users;
	}
	public int getPage() {
		return page;
	}
	public void setPage(int page) {
		this.page = page;
	}
	public PostService getPostService() {
		return postService;
	}
	public void setPostService(PostService postService) {
		this.postService = postService;
	}
	public List<Post> getPosts() {
		return posts;
	}
	public void setPosts(List<Post> posts) {
		this.posts = posts;
	}
	public Post getPost() {
		return post;
	}
	public void setPost(Post post) {
		this.post = post;
	}
	
}
