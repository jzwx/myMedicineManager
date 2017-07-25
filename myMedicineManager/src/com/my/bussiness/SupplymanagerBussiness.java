package com.my.bussiness;

import java.util.ArrayList;
import java.util.List;

import com.my.hibernate.HibernateDAO;
import com.my.hibernate.Supplymanager;
import com.my.util.Page;

public class SupplymanagerBussiness {
	private HibernateDAO mydao=new HibernateDAO();
	
	public List findAll(Page mypage){
		List list=mydao.find(mypage);
		return list;
	}
	
	public int add(Supplymanager sm){
		int falg=0;
		String strsql="from Supplymanager where sname=?";
		List lstval=new ArrayList();
		lstval.add(sm.getSname());
		List list=mydao.find(strsql, lstval);
		if(list.isEmpty()){
			mydao.save(sm);
			falg=0;
		}else{
			falg=-1;
		}
		return falg;
	}
	
	public Supplymanager preupdate(int id){
		Supplymanager sm=(Supplymanager) mydao.findById(Supplymanager.class.getName(), id);
		return sm;
	}
	
	public int update(Supplymanager sm){
		int falg=0;
		String strsql="from Supplymanager where sname=? and sid!=?";
		List lstval=new ArrayList();
		lstval.add(sm.getSname());
		lstval.add(sm.getSid());
		List list=mydao.find(strsql, lstval);
		if(list.isEmpty()){
			mydao.update(sm);
			falg=0;
		}
		else
		{
			falg=-1;
		}
		return falg;
	}
	
	public int delete(int id){
		int falg=0;
		Supplymanager sm=(Supplymanager) mydao.findById(Supplymanager.class.getName(), id);
		String strsql="from Drugstorage where supplymanager=?";
		List lstval=new ArrayList();
		lstval.add(sm);
		List list=mydao.find(strsql, lstval);
		if(list.isEmpty()){
			mydao.delete(sm);
			falg=0;
		}else{
			falg=-1;
		}
		return falg;
	}
	
	public List details(int id){
		String strsql="from Supplymanager where sid=?";
		List lstval=new ArrayList();
		lstval.add(id);
		List list=mydao.find(strsql, lstval);
		return list;
	}
}
