package com.my.bussiness;

import java.util.ArrayList;
import java.util.List;

import com.my.hibernate.Drugclass;
import com.my.hibernate.HibernateDAO;
import com.my.util.Page;

public class DrugclassBussiness {
	private HibernateDAO mydao=new HibernateDAO();
	public List findAll(Page mypage){
		List list=mydao.find(mypage);
		return list;
	}
	
	public int add(Drugclass dc){
		int falg=0;
		String strsql="from Drugclass where cname=?";
		List lstval=new ArrayList();
		lstval.add(dc.getCname());
		List list=mydao.find(strsql, lstval);
		if(list.isEmpty()){
			mydao.save(dc);
			falg=0;
		}else{
			falg=-1;
		}
		return falg;
	}
	
	public Drugclass preupdate(int id){
		Drugclass dc=(Drugclass) mydao.findById(Drugclass.class.getName(), id);
		return dc;
	}
	
	public int update(Drugclass dc){
		int falg=0;
		String strsql="from Drugclass where cname=? and id!=?";
		List lstval=new ArrayList();
		lstval.add(dc.getCname());
		lstval.add(dc.getCid());
		List list=mydao.find(strsql, lstval);
		if(list.isEmpty()){
			mydao.update(dc);
			falg=0;
		}else{
			falg=-1;
		}
		return falg;
	}
	
	public int delete(int id){
		int falg=0;
		String strsql="from Druginfo where drugclass=?";
		Drugclass dc=(Drugclass) mydao.findById(Drugclass.class.getName(), id);
		List lstval=new ArrayList();
		lstval.add(dc);
		List list=mydao.find(strsql, lstval);
		if(list.isEmpty()){
			mydao.delete(dc);
			falg=0;
		}else{
			falg=-1;
		}
		return falg;
	}
}
