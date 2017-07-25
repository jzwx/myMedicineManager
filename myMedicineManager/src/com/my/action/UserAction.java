package com.my.action;

import java.util.ArrayList;
import java.util.List;

import javax.servlet.http.HttpServletRequest;

import org.apache.struts2.ServletActionContext;

import com.my.bussiness.UserBussiness;
import com.my.hibernate.User;
import com.my.util.Page;
import com.opensymphony.xwork2.ActionContext;
import com.opensymphony.xwork2.ActionSupport;

public class UserAction extends ActionSupport {
	private User user;
	private UserBussiness myBussiness=new UserBussiness();
	public User getUser() {
		return user;
	}
	
	public void setUser(User user) {
		this.user = user;
	}
	
	public String login() throws Exception{
		int falg=myBussiness.login(user);
		if(falg==-1){
			this.addFieldError("user.username", "用户名错误,请重新输入!");
			return "login";
		}else if(falg==-2){
			this.addFieldError("user.password", "密码错误,请重新输入!");
			return "login";
		}else if(falg==1){
			ActionContext.getContext().getSession().put("username", user.getUsername());
			return "manager";
		}else{
			ActionContext.getContext().getSession().put("username", user.getUsername());
			return "normalmanager";
		}
	}
	
	public String logout() throws Exception{
		return "login";
	}
	
	public String findAll() throws Exception{
		String strsql="from User";
		Page mypage=new Page();
		mypage.setStrsql(strsql);
		mypage.setPagename("userpage");
		mypage.setLstname("userlist");
		mypage.setResultname("usershow");
		ActionContext.getContext().getSession().put(mypage.getPagename(), mypage);
		List list=myBussiness.findAll(mypage);
		HttpServletRequest request=ServletActionContext.getRequest();
		request.setAttribute(mypage.getLstname(), list);
		return mypage.getResultname();
	}
	
	public String add() throws Exception{
		int falg=myBussiness.add(user);
		if(falg==-1){
			this.addFieldError("user.username", "用户名存在,请重新输入!");
			return "useradd";
		}else{
			return "useraddsuccess";
		}
	}
	
	public String delete() throws Exception{
		HttpServletRequest request=ServletActionContext.getRequest();
		int id=Integer.parseInt(request.getParameter("id"));
		myBussiness.delete(id);
		return "userdeletesuccess";
	}
	
	public String prepassword() throws Exception{
		HttpServletRequest request=ServletActionContext.getRequest();
		String name=request.getParameter("username");
		List list=myBussiness.prepassword(name);
		request.setAttribute("passwordlist", list);
		return "prepassword";
	}
	
	public String updatepassword() throws Exception{
		HttpServletRequest request=ServletActionContext.getRequest();
		int id=Integer.parseInt(request.getParameter("id"));
//		System.out.println(id);
		myBussiness.updatepassword(id,user.getPassword());
		return "updatepasswordsuccess";
	}
	
	public String preupdate() throws Exception{
		HttpServletRequest request=ServletActionContext.getRequest();
		int id=Integer.parseInt(request.getParameter("id"));
		user=myBussiness.preupdate(id);
		return "userpreupdate";
	}
	
	public String update() throws Exception{
		int falg=myBussiness.update(user);
		if(falg==-1){
			this.addFieldError("user.username", "用户名存在,请重新输入!");
			return "userpreupdate";
		}else{
			return "userupdatesuccess";
		}
	}
	
	public String findinformcation() throws Exception{
		HttpServletRequest request=ServletActionContext.getRequest();
		String username=request.getParameter("username");
		List list=myBussiness.findinformcation(username);
		request.setAttribute("userlist", list);
		return "personinfo";
	}
}
