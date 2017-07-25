package com.my.action;

import java.util.List;

import javax.servlet.http.HttpServletRequest;

import org.apache.struts2.ServletActionContext;

import com.my.bussiness.DrugdeliveryBussiness;
import com.my.hibernate.Drugdelivery;
import com.my.util.Page;
import com.opensymphony.xwork2.ActionContext;
import com.opensymphony.xwork2.ActionSupport;

public class DrugdeliveryAction extends ActionSupport {
	private Drugdelivery dl;
	private DrugdeliveryBussiness mybussiness=new DrugdeliveryBussiness();
	private String keyWord;
	
	
	public String getKeyWord() {
		return keyWord;
	}
	public void setKeyWord(String keyWord) {
		this.keyWord = keyWord;
	}
	public Drugdelivery getDl() {
		return dl;
	}
	public void setDl(Drugdelivery dl) {
		this.dl = dl;
	}
	
	public String findAll() throws Exception{
		String strsql="from Drugdelivery";
		Page mypage=new Page();
		mypage.setStrsql(strsql);
		mypage.setPagename("drugdeliverypage");
		mypage.setLstname("drugdeliverylist");
		mypage.setResultname("drugdeliveryshow");
		ActionContext.getContext().getSession().put(mypage.getPagename(), mypage);
		List list=mybussiness.findAll(mypage);
		HttpServletRequest request=ServletActionContext.getRequest();
		request.setAttribute(mypage.getLstname(),list);
		return mypage.getResultname();
	}
	
	public String findcategory() throws Exception{
		List list=mybussiness.findcategory();
		HttpServletRequest request=ServletActionContext.getRequest();
		request.setAttribute("druginfolist", list);
		return "drugdeliveryadd";
	}
	
	public String add() throws Exception{
		int falg=0;
		falg=mybussiness.add(dl);
		if(falg==-1){
			this.addFieldError("df.name", "库存中已经不存在该药品,请对该药品进行补充!");
			List list=mybussiness.findcategory();
			HttpServletRequest request=ServletActionContext.getRequest();
			request.setAttribute("druginfolist", list);
			return "drugdeliveryadd";
		}else if(falg==-2){
			this.addFieldError("df.name", "库存中该药品数量过少,请及时对该药品进行补充!");
			List list=mybussiness.findcategory();
			HttpServletRequest request=ServletActionContext.getRequest();
			request.setAttribute("druginfolist", list);
			return "drugdeliveryadd";
		}else{
			return "drugdeliveryaddsuccess";
		}
	}
	
	public String finddelivery() throws Exception{
		HttpServletRequest request=ServletActionContext.getRequest();
		int id=Integer.parseInt(request.getParameter("id"));
		dl=mybussiness.finddelivery(id);
		return "finddelivery";
	}
	
	public String delete() throws Exception{
		HttpServletRequest request=ServletActionContext.getRequest();
		int id=Integer.parseInt(request.getParameter("id"));
		mybussiness.delete(id);
		return "drugdeliverydeletesuccess";
	}
	
	public String findAllcheck() throws Exception{
		String strsql="from Drugdelivery";
		Page mypage=new Page();
		mypage.setStrsql(strsql);
		mypage.setPagename("drugdeliverycheckpage");
		mypage.setLstname("drugdeliverychecklist");
		mypage.setResultname("drugdeliverycheckshow");
		ActionContext.getContext().getSession().put(mypage.getPagename(), mypage);
		List list=mybussiness.findAll(mypage);
		HttpServletRequest request=ServletActionContext.getRequest();
		request.setAttribute(mypage.getLstname(), list);
		return mypage.getResultname();
	}
	
	public String find() throws Exception{
		Page mypage=new Page();
		mypage.setPagename("drugdeliverycheckpage");
		mypage.setLstname("drugdeliverychecklist");
		mypage.setResultname("drugdeliverycheckshow");
		List list=mybussiness.find(dl, keyWord, mypage);
		ActionContext.getContext().getSession().put(mypage.getPagename(), mypage);
		HttpServletRequest request=ServletActionContext.getRequest();
		request.setAttribute(mypage.getLstname(), list);
		return mypage.getResultname();
	}
}
