package com.my.bussiness;

import java.text.DateFormat;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Date;

import java.util.List;

import com.my.hibernate.Druginfo;
import com.my.hibernate.Druginventory;
import com.my.hibernate.Drugstorage;
import com.my.hibernate.HibernateDAO;
import com.my.util.Page;

public class DrugstorageBussiness {
	private HibernateDAO mydao=new HibernateDAO();
	public List findAll(Page mypage){
		List list=mydao.find(mypage);
		return list;
	}
	
	public List finddcategory(){
		List list=mydao.find("from Druginfo");
		return list;
	}
	
	public List findscategory(){
		List list=mydao.find("from Supplymanager");
		return list;
	}
	
	public void add(Drugstorage ds,int id){
		Druginventory di = new Druginventory();
		Druginfo d=(Druginfo) mydao.findById(Druginfo.class.getName(), id);
		String strsql="from Druginventory where name=?";
		List lstval=new ArrayList();
		lstval.add(d.getName());
		List list=mydao.find(strsql, lstval);
		if(list.isEmpty()){
			di.setName(d.getName());
			di.setDnum(ds.getStoragenum());
			mydao.save(di);
		}else{
			di=(Druginventory) list.get(0);
			di.setDnum(di.getDnum()+ds.getStoragenum());
			mydao.update(di);
		}
		mydao.save(ds);
	}
	
	public void delete(int id){
		Drugstorage ds=(Drugstorage) mydao.findById(Drugstorage.class.getName(), id);
		Druginventory di=new Druginventory();
		Druginfo d=(Druginfo) mydao.findById(Druginfo.class.getName(), ds.getDruginfo().getId());
		String strsql="from Druginventory where name=?";
		List lstval=new ArrayList();
		lstval.add(d.getName());
		List list=mydao.find(strsql, lstval);
		if(list.isEmpty()){
			mydao.delete(ds);
		}else{
			di=(Druginventory) list.get(0);
			if(di.getDnum()>=ds.getStoragenum()&&di.getDnum()!=null&&ds.getStoragenum()!=null&&!di.getDnum().equals("")&&!ds.getStoragenum().equals("")){
				di.setDnum(di.getDnum()-ds.getStoragenum());
				mydao.update(di);
			}else{
				di.setDnum(0);
			}
			if(di.getDnum()==0){
				mydao.delete(di);
			}
			mydao.delete(ds);
		}
	}
	
	public Drugstorage findstorage(int id){
		Drugstorage ds=(Drugstorage) mydao.findById(Drugstorage.class.getName(), id);
		return ds;
	}
	
	public List find(Drugstorage ds,String keyWord,Page mypage){
		//去药品信息中找到需要查找药品名称和MID
		String strdruginfo="from Druginfo where name=?";
		String strsql="from Drugstorage where 1=1";
		List lstval=new ArrayList();
		List lstdruginfo=new ArrayList();
		lstdruginfo.add(keyWord);
		List list=null;
		List listdruginfo=mydao.find(strdruginfo, lstdruginfo);
		if(listdruginfo.isEmpty()){
			mypage.setStrsql(strsql, lstval);
			list=mydao.find(mypage);
		}else{
			Druginfo d=new Druginfo();
			d=(Druginfo) listdruginfo.get(0);
			strsql=strsql+" and mid=?";
			lstval.add(d.getId());
			mypage.setStrsql(strsql, lstval);
			list=mydao.find(mypage);
		}
		return list;
	}
	
	public List finddate(Page mypage){
		String strsql="from Drugstorage where enddate<date_format(now(),'%Y%m%d')";
		mypage.setStrsql(strsql);
		List list=mydao.find(mypage);
		return list;
	}
	
//	public static void main(String[] args) {
//		
//	}
}