package com.my.action;

import java.util.List;

import javax.servlet.http.HttpServletRequest;

import org.apache.struts2.ServletActionContext;

import com.my.bussiness.DruginventoryBussiness;
import com.my.hibernate.Druginventory;
import com.my.util.Page;
import com.opensymphony.xwork2.ActionContext;
import com.opensymphony.xwork2.ActionSupport;

public class DruginventoryAction extends ActionSupport {
	private Druginventory di;
	private DruginventoryBussiness mybussiness=new DruginventoryBussiness();
	private String keyWord;
	
	public String getKeyWord() {
		return keyWord;
	}
	public void setKeyWord(String keyWord) {
		this.keyWord = keyWord;
	}
	
	public Druginventory getDi() {
		return di;
	}
	public void setDi(Druginventory di) {
		this.di = di;
	}
	
	public String findAll() throws Exception{
		String strsql="from Druginventory";
		Page mypage=new Page();
		mypage.setPagename("druginventorypage");
		mypage.setLstname("druginventorylist");
		mypage.setResultname("druginventoryshow");
		mypage.setStrsql(strsql);
		ActionContext.getContext().getSession().put(mypage.getPagename(), mypage);
		HttpServletRequest request=ServletActionContext.getRequest();
		List list=mybussiness.findAll(mypage);
		request.setAttribute(mypage.getLstname(), list);
		return mypage.getResultname();
	}
	
	public String find() throws Exception{
		Page mypage=new Page();
		mypage.setPagename("druginventorypage");
		mypage.setLstname("druginventorylist");
		mypage.setResultname("druginventoryshow");
		ActionContext.getContext().put(mypage.getPagename(), mypage);
		HttpServletRequest request=ServletActionContext.getRequest();
		List list=mybussiness.find(di,keyWord,mypage);
		request.setAttribute(mypage.getLstname(), list);
		return mypage.getResultname();
	}
	
	public String findcallpolice() throws Exception{
		Page mypage=new Page();
		mypage.setPagename("callpolicepage");
		mypage.setLstname("callpolicelist");
		mypage.setResultname("callpoliceshow");
		ActionContext.getContext().getSession().put(mypage.getPagename(), mypage);
		HttpServletRequest request=ServletActionContext.getRequest();
		List list=mybussiness.findcallpolice(mypage);
		request.setAttribute(mypage.getLstname(), list);
		return mypage.getResultname();
	}
	
}
