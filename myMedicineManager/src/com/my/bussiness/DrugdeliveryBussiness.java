package com.my.bussiness;

import java.util.ArrayList;
import java.util.List;

import com.my.hibernate.Drugdelivery;
import com.my.hibernate.Druginfo;
import com.my.hibernate.Druginventory;
import com.my.hibernate.Drugstorage;
import com.my.hibernate.HibernateDAO;
import com.my.util.Page;

public class DrugdeliveryBussiness {
	private HibernateDAO mydao=new HibernateDAO();
	
	public List findAll(Page mypage){
		List list=mydao.find(mypage);
		return list;
	}
	
	public List findcategory(){
		List list=mydao.find("from Druginfo");
		return list;
	}
	
	public int add(Drugdelivery dl){
		int falg=0;
		Druginventory di=new Druginventory();
		Druginfo d=(Druginfo) mydao.findById(Druginfo.class.getName(), dl.getDruginfo().getId());
		dl.setPrice(d.getRetailprice());//设置零售价格
		dl.setOutgoingamount(d.getRetailprice()*dl.getEliverynum());//出库总金额
		dl.setOutprofit(d.getRetailprice()*dl.getEliverynum()-d.getBuyingprice()*dl.getEliverynum());
		String strsql="from Druginventory where name=?";
		List lstval=new ArrayList();
		lstval.add(d.getName());
		List list=mydao.find(strsql, lstval);
		if(list.isEmpty()){
			falg=-1;
		}else{
			di=(Druginventory) list.get(0);
			di.setDnum(di.getDnum()-dl.getEliverynum());
			if(di.getDnum()>=0){
			mydao.update(di);
			mydao.save(dl);
			falg=0;
			}else{
				falg=-2;
			}
		}
		return falg;
	}
	
	public Drugdelivery finddelivery(int id){
		Drugdelivery dl=(Drugdelivery) mydao.findById(Drugdelivery.class.getName(), id);
		return dl;
	}
	
	public void delete(int id){
		Drugdelivery dl=(Drugdelivery) mydao.findById(Drugdelivery.class.getName(), id);
		Druginfo di=(Druginfo) mydao.findById(Druginfo.class.getName(), dl.getDruginfo().getId());
		String strsql="from Druginventory where name=?";
		List lstval=new ArrayList();
		lstval.add(di.getName());
		List list=mydao.find(strsql, lstval);
		if(list.isEmpty()){
			mydao.delete(dl);
		}else{
			Druginventory dit=new Druginventory();
			dit=(Druginventory) list.get(0);
			dit.setDnum(dit.getDnum()+dl.getEliverynum());
			mydao.update(dit);
			mydao.delete(dl);
		}
	}
	
	public List find(Drugdelivery ds,String keyWord,Page mypage){
		//去药品信息中找到需要查找药品名称和MID
		String strdruginfo="from Druginfo where name=?";
		String strsql="from Drugdelivery where 1=1";
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
//	public static void main(String[] args) {
//		DrugdeliveryBussiness m=new DrugdeliveryBussiness();
//	}
}
