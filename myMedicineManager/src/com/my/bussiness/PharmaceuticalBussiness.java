package com.my.bussiness;

import java.util.ArrayList;
import java.util.List;

import com.my.hibernate.HibernateDAO;
import com.my.hibernate.Pharmaceutical;
import com.my.util.Page;

public class PharmaceuticalBussiness {
	private HibernateDAO mydao=new HibernateDAO();
	public List findAll(Page mypage){
		List list=mydao.find(mypage);
		return list;
	}
	
	public int add(Pharmaceutical pc){
		int falg=0;
		String strsql="from Pharmaceutical where pname=?";
		List lstval=new ArrayList();
		lstval.add(pc.getPname());
		List list=mydao.find(strsql, lstval);
		if(list.isEmpty()){
			mydao.save(pc);
			falg=0;
		}else{
			falg=-1;
		}
		return falg;
	}
	
	public Pharmaceutical preupdate(int id){
		Pharmaceutical pc=(Pharmaceutical) mydao.findById(Pharmaceutical.class.getName(), id);
		return pc;
	}
	
	public int update(Pharmaceutical pc){
		int falg=0;
		String strsql="from Pharmaceutical where pname=? and pid!=?";
		List lstval=new ArrayList();
		lstval.add(pc.getPname());
		lstval.add(pc.getPid());
		List list=mydao.find(strsql, lstval);
		if(list.isEmpty()){
			mydao.update(pc);
			falg=0;
		}else{
			falg=-1;
		}
		return falg;
	}
	
	public int delete(int id){
		Pharmaceutical pc=(Pharmaceutical) mydao.findById(Pharmaceutical.class.getName(), id);
		String strsql="from Druginfo where pharmaceutical=?";
		int falg=0;
		List lstval=new ArrayList();
		lstval.add(pc);
		List list=mydao.find(strsql, lstval);
		if(list.isEmpty()){
			mydao.delete(pc);
			falg=0;
		}else{
			falg=-1;
		}
		return falg;
	}
}
