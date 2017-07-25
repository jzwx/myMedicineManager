package com.my.action;

import java.util.List;

import javax.servlet.http.HttpServletRequest;

import org.apache.struts2.ServletActionContext;

import com.my.bussiness.DrugstorageBussiness;
import com.my.hibernate.Druginventory;
import com.my.hibernate.Drugstorage;
import com.my.util.Page;
import com.opensymphony.xwork2.ActionContext;
import com.opensymphony.xwork2.ActionSupport;

public class DrugstorageAction extends ActionSupport {
	private Drugstorage ds;
	private DrugstorageBussiness mybussiness=new DrugstorageBussiness();
	private String keyWord;
	
	
	public String getKeyWord() {
		return keyWord;
	}

	public void setKeyWord(String keyWord) {
		this.keyWord = keyWord;
	}

	public Drugstorage getDs() {
		return ds;
	}

	public void setDs(Drugstorage ds) {
		this.ds = ds;
	}
	
	public String findAll() throws Exception{
		String strsql="from Drugstorage";
		Page mypage=new Page();
		mypage.setStrsql(strsql);
		mypage.setPagename("drugstoragepage");
		mypage.setLstname("drugstoragelist");
		mypage.setResultname("drugstorageshow");
		ActionContext.getContext().getSession().put(mypage.getPagename(), mypage);
		List list=mybussiness.findAll(mypage);
		HttpServletRequest request=ServletActionContext.getRequest();
		request.setAttribute(mypage.getLstname(), list);
		return mypage.getResultname();
		
	}
	
	public String findcategory() throws Exception{
		HttpServletRequest request=ServletActionContext.getRequest();
		List dlist=mybussiness.finddcategory();
		List slist=mybussiness.findscategory();
		request.setAttribute("druginfollist", dlist);
		request.setAttribute("supplymanagerlist", slist);
		return "drugstorageadd";
	}
	
	public String add() throws Exception{
		int id=ds.getDruginfo().getId();
		mybussiness.add(ds,id);
		return "drugstorageaddsuccess";
	}
	
	public String delete() throws Exception{
		HttpServletRequest request=ServletActionContext.getRequest();
		int id=Integer.parseInt(request.getParameter("id"));
		mybussiness.delete(id);
		return "drugstoragedeletesuccess";
	}
	
	public String findstorage() throws Exception{
		HttpServletRequest request=ServletActionContext.getRequest();
		int id=Integer.parseInt(request.getParameter("id"));
		ds=mybussiness.findstorage(id);
		return "findstorage";
	}
	
	public String findAllcheck() throws Exception{
		String strsql="from Drugstorage";
		Page mypage=new Page();
		mypage.setStrsql(strsql);
		mypage.setPagename("drugstoragecheckpage");
		mypage.setLstname("drugstoragechecklist");
		mypage.setResultname("drugstoragecheckshow");
		ActionContext.getContext().getSession().put(mypage.getPagename(), mypage);
		List list=mybussiness.findAll(mypage);
		HttpServletRequest request=ServletActionContext.getRequest();
		request.setAttribute(mypage.getLstname(), list);
		return mypage.getResultname();
	}
	
	public String find() throws Exception{
		Page mypage=new Page();
		mypage.setPagename("drugstoragecheckpage");
		mypage.setLstname("drugstoragechecklist");
		mypage.setResultname("drugstoragecheckshow");
		List list=mybussiness.find(ds,keyWord,mypage);
		ActionContext.getContext().getSession().put(mypage.getPagename(), mypage);
		HttpServletRequest request=ServletActionContext.getRequest();
		request.setAttribute(mypage.getLstname(), list);
		return mypage.getResultname();
	}
	
	public String finddate() throws Exception{
		Page mypage=new Page();
		mypage.setPagename("finddatepage");
		mypage.setLstname("finddatelist");
		mypage.setResultname("finddateshow");
		List list=mybussiness.finddate(mypage);
		ActionContext.getContext().getSession().put(mypage.getPagename(), mypage);
		HttpServletRequest request=ServletActionContext.getRequest();
		request.setAttribute(mypage.getLstname(), list);
		return mypage.getResultname();
	}
}
