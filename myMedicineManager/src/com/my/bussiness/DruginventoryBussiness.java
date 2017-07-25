package com.my.bussiness;

import java.util.ArrayList;
import java.util.List;

import com.my.hibernate.Druginventory;
import com.my.hibernate.HibernateDAO;
import com.my.util.Page;

public class DruginventoryBussiness {
	private HibernateDAO mydao=new HibernateDAO();
	
	public List findAll(Page mypage){
		List list=mydao.find(mypage);
		return list;
	}
	
	public List find(Druginventory di,String keyWord,Page mypage){
		String strsql="from Druginventory where 1=1";
		List lstval=new ArrayList();
		if(keyWord!=null&&!keyWord.equals("")){
			strsql=strsql+" and name=?";
			lstval.add(keyWord);
		}
		mypage.setStrsql(strsql, lstval);
		List list=mydao.find(mypage);
		return list;
	}
	
	
//	两表之间的查询关系
	public List findcallpolice(Page mypage){
		String strsql="from Druginventory where dnum>? or dnum<?";
		List lstval=new ArrayList();
		lstval.add(1000);
		lstval.add(100);
		mypage.setStrsql(strsql, lstval);
		List list=mydao.find(mypage);
		return list;
	}
}
