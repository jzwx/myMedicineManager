package com.my.action;

import java.util.List;

import javax.servlet.http.HttpServletRequest;

import org.apache.struts2.ServletActionContext;

import com.my.bussiness.PharmaceuticalBussiness;
import com.my.hibernate.Pharmaceutical;
import com.my.util.Page;
import com.opensymphony.xwork2.ActionContext;
import com.opensymphony.xwork2.ActionSupport;

public class PharmaceuticalAction extends ActionSupport {
	private Pharmaceutical pc;
	private PharmaceuticalBussiness mybussiness=new PharmaceuticalBussiness();
	public Pharmaceutical getPc() {
		return pc;
	}
	public void setPc(Pharmaceutical pc) {
		this.pc = pc;
	}
	
	public String findAll() throws Exception{
		String strsql="from Pharmaceutical";
		Page mypage=new Page();
		mypage.setStrsql(strsql);
		mypage.setPagename("pharmaceuticalpage");
		mypage.setLstname("pharmaceuticallist");
		mypage.setResultname("pharmaceuticalshow");
		List list=mybussiness.findAll(mypage);
		ActionContext.getContext().getSession().put(mypage.getPagename(), mypage);
		HttpServletRequest request=ServletActionContext.getRequest();
		request.setAttribute(mypage.getLstname(), list);
		return mypage.getResultname();
	}
	
	public String add() throws Exception{
		int falg=mybussiness.add(pc);
		if(falg==-1){
			this.addFieldError("pc.pname", "药品剂型存在,请重新输入!");
			return "pharmaceuticaladd";
		}else{
			return "pharmaceuticaladdsuccess";
		}
	}
	
	public String preupdate() throws Exception{
		HttpServletRequest request=ServletActionContext.getRequest();
		int id=Integer.parseInt(request.getParameter("id"));
		pc=mybussiness.preupdate(id);
		return "pharmaceuticalpreupdate";
	}
	
	public String update() throws Exception{
		int falg=mybussiness.update(pc);
		if(falg==-1){
			this.addFieldError("pc.pname", "药品剂型名称存在,请重新输入!");
			return "pharmaceuticalpreupdate";
		}else{
			return "pharmaceuticalupdatesuccess";
		}
	}
	
	public String delete() throws Exception{
		HttpServletRequest request=ServletActionContext.getRequest();
		int id=Integer.parseInt(request.getParameter("id"));
		int falg=mybussiness.delete(id);
		if(falg==-1){
			this.addActionError("药品信息表中存在该机型,请删除后再进行操作!");
			return findAll();
		}else{
			return "pharmaceuticaldeletesuccess";
		}
	}
}
