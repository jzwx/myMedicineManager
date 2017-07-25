package com.my.action;

import java.io.File;
import java.util.List;

import javax.servlet.http.HttpServletRequest;

import org.apache.struts2.ServletActionContext;

import com.my.bussiness.DruginfoBussiness;
import com.my.hibernate.Druginfo;
import com.my.util.Page;
import com.opensymphony.xwork2.ActionContext;
import com.opensymphony.xwork2.ActionSupport;

public class DruginfoAction extends ActionSupport {
	private Druginfo df;
	private DruginfoBussiness myBussiness=new DruginfoBussiness();
	//图片文件信息
	private File picpath;
	private String picpathContentType;
	private String picpathFileName;
	private String keyWord;
	
	
	public String getKeyWord() {
		return keyWord;
	}

	public void setKeyWord(String keyWord) {
		this.keyWord = keyWord;
	}

	public Druginfo getDf() {
		return df;
	}

	public void setDf(Druginfo df) {
		this.df = df;
	}

	public File getPicpath() {
		return picpath;
	}

	public void setPicpath(File picpath) {
		this.picpath = picpath;
	}

	public String getPicpathContentType() {
		return picpathContentType;
	}

	public void setPicpathContentType(String picpathContentType) {
		this.picpathContentType = picpathContentType;
	}

	public String getPicpathFileName() {
		return picpathFileName;
	}

	public void setPicpathFileName(String picpathFileName) {
		this.picpathFileName = picpathFileName;
	}

	public String findAll() throws Exception{
		String strsql="from Druginfo";
		Page mypage=new Page();
		mypage.setStrsql(strsql);
		mypage.setPagename("druginfopage");
		mypage.setResultname("druginfoshow");
		mypage.setLstname("druginfolist");
		ActionContext.getContext().getSession().put(mypage.getPagename(), mypage);
		List list=myBussiness.findAll(mypage);
		HttpServletRequest request=ServletActionContext.getRequest();
		request.setAttribute(mypage.getLstname(), list);
		return mypage.getResultname();
	}
	
	public String findcategory() throws Exception{
		HttpServletRequest request=ServletActionContext.getRequest();
		List plist=myBussiness.findpcategory();
		List clist=myBussiness.findccategory();
		request.setAttribute("pharmaceuticallist", plist);
		request.setAttribute("drugclasslist", clist);
		return "druginfoadd";
	}
	
	public String add() throws Exception{
		System.out.println(picpath);
		System.out.println(picpathContentType);
		System.out.println(picpathFileName);
		System.out.println("111111");
		String realpath=ServletActionContext.getServletContext().getRealPath("/upload");
		System.out.println(realpath);
		System.out.println(df.getName()+" "+df.getPharmaceutical()+" "+df.getDrugclass());
		int falg=myBussiness.add(df,picpath,picpathFileName,realpath);
		if(falg==-1){
			this.addFieldError("df.name", "上传图片出错,请重新选择图片!");
			return findcategory();
		}else if(falg==-2){
			this.addFieldError("df.name", "药品代码存在,请重新输入!");
			return findcategory();
		}else if(falg==-3){
			this.addFieldError("df.name", "药品名称存在,请重新输入!");
			return findcategory();
		}else{
			return "druginfoaddsuccess";
		}
	}
	
	public String preupdate() throws Exception{
		HttpServletRequest request=ServletActionContext.getRequest();
		int id=Integer.parseInt(request.getParameter("id"));
		List plist=myBussiness.findpcategory();
		List clist=myBussiness.findccategory();
		df=myBussiness.preupdate(id);
		request.setAttribute("pharmaceuticallist", plist);
		request.setAttribute("drugclasslist", clist);
		return "druginfopreupdate";
	}
	
	public String update() throws Exception{
		HttpServletRequest request=ServletActionContext.getRequest();
		String realpath=ServletActionContext.getServletContext().getRealPath("/upload");
		int falg=0;
		falg=myBussiness.update(df,picpath,picpathFileName,realpath);
		if(falg==-1){
			this.addFieldError("df.name", "上传图片出错,请重新选择图片!");
			List plist=myBussiness.findpcategory();
			List clist=myBussiness.findccategory();
			request.setAttribute("pharmaceuticallist", plist);
			request.setAttribute("drugclasslist", clist);
			return "druginfopreupdate";
		}else if(falg==-2){
			this.addFieldError("df.name", "药品代码存在,请重新输入!");
			List plist=myBussiness.findpcategory();
			List clist=myBussiness.findccategory();
			request.setAttribute("pharmaceuticallist", plist);
			request.setAttribute("drugclasslist", clist);
			return "druginfopreupdate";
		}else if(falg==-3){
			this.addFieldError("df.name", "药品名称存在,请重新输入!");
			List plist=myBussiness.findpcategory();
			List clist=myBussiness.findccategory();
			request.setAttribute("pharmaceuticallist", plist);
			request.setAttribute("drugclasslist", clist);
			return "druginfopreupdate";
		}else{
			return "druginfoupdatesuccess";
		}
	}
	
	public String delete() throws Exception{
		HttpServletRequest request=ServletActionContext.getRequest();
		String realpath=ServletActionContext.getServletContext().getRealPath("/upload");
		int id=Integer.parseInt(request.getParameter("id"));
		int falg=myBussiness.delete(id,realpath);
		if(falg==-1){
			this.addActionError("药品入库表中存在该药品信息,请删除后再重新进行该操作!");
			return findAll();
		}else if(falg==-2){
			this.addActionError("药品出库表中存在该药品信息,请删除后再重新进行该操作!");
			return findAll();
		}else{
			return "druginfodeletesuccess";
		}
	}
	
	public String finddrug() throws Exception{
		HttpServletRequest request=ServletActionContext.getRequest();
		int id=Integer.parseInt(request.getParameter("id"));
		df=myBussiness.finddrug(id);
		return "finddrug";
	}
	
	public String find() throws Exception{
		Page mypage=new Page();
		mypage.setPagename("druginfopage");
		mypage.setResultname("druginfoshow");
		mypage.setLstname("druginfolist");
		List list=myBussiness.find(df,keyWord,mypage);
		ActionContext.getContext().getSession().put(mypage.getPagename(), mypage);
		HttpServletRequest request=ServletActionContext.getRequest();
		request.setAttribute(mypage.getLstname(), list);
		return mypage.getResultname();
	}
}
