package com.my.action;

import java.util.List;

import javax.servlet.http.HttpServletRequest;

import org.apache.struts2.ServletActionContext;

import com.my.hibernate.HibernateDAO;
import com.my.util.Page;
import com.opensymphony.xwork2.ActionContext;
import com.opensymphony.xwork2.ActionSupport;

public class PageAction extends ActionSupport {
	private int currentpage;
	private String pagename;
	public int getCurrentpage() {
		return currentpage;
	}
	public void setCurrentpage(int currentpage) {
		this.currentpage = currentpage;
	}
	public String getPagename() {
		return pagename;
	}
	public void setPagename(String pagename) {
		this.pagename = pagename;
	}
	
	public String execute() throws Exception{
		Page mypage=(Page) ActionContext.getContext().getSession().get(pagename);
		mypage.setCurrentpage(currentpage);
		HibernateDAO mydao=new HibernateDAO();
		List list=mydao.find(mypage);
		HttpServletRequest request=ServletActionContext.getRequest();
		request.setAttribute(mypage.getLstname(), list);
		return mypage.getResultname();
	}
}
