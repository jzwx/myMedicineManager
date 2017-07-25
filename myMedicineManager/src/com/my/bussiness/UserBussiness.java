package com.my.bussiness;

import java.util.ArrayList;
import java.util.List;

import com.my.hibernate.HibernateDAO;
import com.my.hibernate.User;
import com.my.util.Page;

public class UserBussiness {
	private HibernateDAO mydao=new HibernateDAO();
	public int login(User user){
		int falg;
		String strsql="from User";
		List lstval=new ArrayList();
		List list;
		if(user.getRole()==1){
			falg=1;
			strsql="from User where role=1 and username=?";
			lstval.add(user.getUsername());
			list=mydao.find(strsql, lstval);
			if(list.isEmpty()){
				falg=-1;//用户名不存在
			}else{
				strsql="from User where role=1 and username=? and password=?";
				lstval.add(user.getPassword());
				list=mydao.find(strsql, lstval);
				if(list.isEmpty()){
					falg=-2;
				}else{
					falg=1;
				}
			}
		}
		else{
			falg=0;
			strsql="from User where role=0 and username=?";
			lstval.add(user.getUsername());
			list=mydao.find(strsql, lstval);
			if(list.isEmpty()){
				falg=-1;
			}else{
				strsql="from User where role=0 and username=? and password=?";
				lstval.add(user.getPassword());
				list=mydao.find(strsql, lstval);
				if(list.isEmpty()){
					falg=-2;
				}else{
					falg=0;
				}
			}
		}
		return falg;
	}
	
	public List findAll(Page mypage){
		List list=mydao.find(mypage);
		return list;
	}
	
	public int add(User user){
		int falg=0;
		String strsql="from User where username=?";
		List lstval=new ArrayList();
		lstval.add(user.getUsername());
		List list=mydao.find(strsql, lstval);
		if(list.isEmpty()){
			falg=0;
			mydao.save(user);
		}else{
			falg=-1;
		}
		return falg;
	}
	
	public void delete(int id){
		User user=new User();
		user=(User) mydao.findById(User.class.getName(), id);
		mydao.delete(user);
	}
	
	public List prepassword(String name){
		String strsql="from User where username=?";
		List lstval=new ArrayList();
		lstval.add(name);
		List list=mydao.find(strsql, lstval);
		return list;
	}
	
	public void updatepassword(int id,String password){
		User user=(User) mydao.findById(User.class.getName(), id);
		user.setPassword(password);
		mydao.update(user);
	}
	
	public User preupdate(int id){
		User user=(User) mydao.findById(User.class.getName(), id);
		return user;
	}
	
	public int update(User user){
		int falg=0;
		String strsql="from User where username=? and id!=?";
		List lstval=new ArrayList();
		lstval.add(user.getUsername());
		lstval.add(user.getId());
		List list=mydao.find(strsql, lstval);
		if(list.isEmpty()){
			falg=0;
			mydao.update(user);
		}else{
			falg=-1;
		}
		return falg;
	}
	
	public List findinformcation(String username){
		String strsql="from User where username=?";
		List lstval=new ArrayList();
		lstval.add(username);
		List list=mydao.find(strsql, lstval);
		return list;
	}
}
