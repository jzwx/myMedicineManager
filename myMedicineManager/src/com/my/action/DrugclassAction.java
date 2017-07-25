package com.my.action;

import java.util.List;

import javax.servlet.http.HttpServletRequest;

import org.apache.struts2.ServletActionContext;

import com.my.bussiness.DrugclassBussiness;
import com.my.hibernate.Drugclass;
import com.my.util.Page;
import com.opensymphony.xwork2.ActionContext;
import com.opensymphony.xwork2.ActionSupport;

public class DrugclassAction extends ActionSupport {
	private Drugclass drugclass;
	private DrugclassBussiness myBussiness=new DrugclassBussiness();
	public Drugclass getDrugclass() {
		return drugclass;
	}
	public void setDrugclass(Drugclass drugclass) {
		this.drugclass = drugclass;
	}
	
	public String findAll() throws Exception{
		String strsql="from Drugclass";
		Page mypage=new Page();
		mypage.setStrsql(strsql);
		mypage.setPagename("drugclasspage");
		mypage.setResultname("drugclassshow");
		mypage.setLstname("drugclasslist");
		ActionContext.getContext().getSession().put(mypage.getPagename(), mypage);
		List list=myBussiness.findAll(mypage);
		HttpServletRequest request=ServletActionContext.getRequest();
		request.setAttribute(mypage.getLstname(), list);
		return mypage.getResultname();
	}
	
	public String add() throws Exception{
		int falg=myBussiness.add(drugclass);
		if(falg==-1){
			this.addFieldError("drugclass.cname", "药品分类存在,请重新输入!");
			return "drugclassadd";
		}else{
			return "drugclassaddsuccess";
		}
	}
	
	public String preupdate() throws Exception{
		HttpServletRequest request=ServletActionContext.getRequest();
		int id=Integer.parseInt(request.getParameter("id"));
		drugclass=myBussiness.preupdate(id);
		return "drugclasspreupdate";
	}
	
	public String update() throws Exception{
		int falg=myBussiness.update(drugclass);
		if(falg==-1){
			this.addFieldError("dc.cname", "药品类型存在,请重新输入!");
			return "drugclasspreupdate";
		}else{
			return "drugclassupdatesuccess";
		}
	}
	
	public String delete() throws Exception{
		HttpServletRequest request=ServletActionContext.getRequest();
		int id=Integer.parseInt(request.getParameter("id"));
		int falg=myBussiness.delete(id);
		if(falg==-1){
			this.addActionError("该药品信息中存在该分类信息,请删除该分类信息后再进行该操作!");
			return findAll();
		}else{
			return "drugclassdeletesuccess";
		}
	}
}
