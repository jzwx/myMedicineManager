package com.my.action;

import java.util.List;

import javax.servlet.http.HttpServletRequest;

import org.apache.struts2.ServletActionContext;

import com.my.bussiness.SupplymanagerBussiness;
import com.my.hibernate.Supplymanager;
import com.my.util.Page;
import com.opensymphony.xwork2.ActionContext;
import com.opensymphony.xwork2.ActionSupport;

public class SupplymanagerAction extends ActionSupport {
	private Supplymanager sm;
	private SupplymanagerBussiness mybussiness=new SupplymanagerBussiness();
	public Supplymanager getSm() {
		return sm;
	}
	public void setSm(Supplymanager sm) {
		this.sm = sm;
	}
	
	public String findAll() throws Exception{
		String strsql="from Supplymanager";
		Page mypage=new Page();
		mypage.setStrsql(strsql);
		mypage.setPagename("supplymanagerpage");
		mypage.setLstname("supplymanagerlist");
		mypage.setResultname("supplymanagershow");
		ActionContext.getContext().getSession().put(mypage.getPagename(), mypage);
		List list=mybussiness.findAll(mypage);
		HttpServletRequest request=ServletActionContext.getRequest();
		request.setAttribute("supplymanagerlist", list);
		return "supplymanagershow";
	}
	
	public String add() throws Exception{
		int falg=mybussiness.add(sm);
		if(falg==-1){
			this.addFieldError("sm.sname", "供货单位已存在,请重新输入!");
			return "supplymanageradd";
		}
		else
		{
			return "supplymanageraddsuccess";
		}
	}
	
	public String preupdate() throws Exception{
		HttpServletRequest request=ServletActionContext.getRequest();
		int id=Integer.parseInt(request.getParameter("id"));
		sm=mybussiness.preupdate(id);
		return "supplymanagerpreupdate";
	}
	
	public String update() throws Exception{
		int falg=mybussiness.update(sm);
		if(falg==-1){
			this.addFieldError("sm.sname", "供货单位已存在,请重新输入!");
			return "supplymanagerpreupdate";
		}else{
			return "supplymanagerupdatesuccess";
		}
	}
	
	public String delete() throws Exception{
		int falg=0;
		HttpServletRequest request=ServletActionContext.getRequest();
		int id=Integer.parseInt(request.getParameter("id"));
		falg=mybussiness.delete(id);
		if(falg==-1){
			this.addActionError("药品入库存在该供货单位!");
			return findAll();
		}else{
			return "supplymanagerdeletesuccess";
		}
	}
	
	public String details() throws Exception{
		HttpServletRequest request=ServletActionContext.getRequest();
		int id=Integer.parseInt(request.getParameter("id"));
		List list=mybussiness.details(id);
		request.setAttribute("supplymanagerdetails", list);
		return "supplymanagerview";
	}
}
