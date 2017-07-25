package com.my.bussiness;

import java.io.File;
import java.io.IOException;
import java.util.ArrayList;
import java.util.List;

import org.apache.commons.io.FileUtils;

import com.my.hibernate.Druginfo;
import com.my.hibernate.HibernateDAO;
import com.my.util.Page;
import com.my.util.Util;

public class DruginfoBussiness {
	private HibernateDAO mydao=new HibernateDAO();
	public List findAll(Page mypage){
		List list=mydao.find(mypage);
		return list;
	}
	
	public List findpcategory(){
		List list=mydao.find("from Pharmaceutical");
		return list;
	}
	
	public List findccategory(){
		List list=mydao.find("from Drugclass");
		return list;
	}
	
	public int add(Druginfo df,File picpath,String picpathFileName,String realpath){
		int falg=0;
		String strsql="from Druginfo where name=?";
		List lstval=new ArrayList();
		lstval.add(df.getName());
		List list=mydao.find(strsql, lstval);
		if(list.isEmpty()){
			strsql="from Druginfo where name=? and isbn=?";
			lstval.add(df.getIsbn());
			list=mydao.find(strsql, lstval);
			if(list.isEmpty()){
				if(picpathFileName!=null&&!picpathFileName.equals("")){
					try{
						String newFileName=Util.generateFileName(picpathFileName);
						File newfile=new File(realpath+"/"+newFileName);
						FileUtils.copyFile(picpath, newfile);
						df.setImage(newFileName);
						mydao.save(df);
						falg=0;
					}catch (IOException e) {
						// TODO Auto-generated catch block
						e.printStackTrace();
						falg=-1;
					}
				}
			}else{
				falg=-2;
			}
		}else{
			falg=-3;
		}
		return falg;
	}
	
	public Druginfo preupdate(int id){
		Druginfo df=(Druginfo) mydao.findById(Druginfo.class.getName(), id);
		return df;
	}
	
	public int update(Druginfo df,File picpath,String picpathFileName,String realpath){
		int falg=0;
		String strsql="from Druginfo where name=? and id!=?";
		List lstval=new ArrayList();
		lstval.add(df.getName());
		lstval.add(df.getId());
		List list=mydao.find(strsql, lstval);
		if(list.isEmpty()){
			strsql="from Druginfo where name=? and id!=? and isbn=?";
			lstval.add(df.getIsbn());
			list=mydao.find(strsql, lstval);
			if(list.isEmpty()){
				if(picpathFileName!=null&&!picpathFileName.equals("")){
					try {
						File oldFile=new File(realpath+"/"+df.getImage());
						if(oldFile.exists()){
							oldFile.delete();
						}
						String newFileName=Util.generateFileName(picpathFileName);
						File newFile=new File(realpath+"/"+newFileName);
						FileUtils.copyFile(picpath, newFile);
						df.setImage(newFileName);
						mydao.update(df);
					} catch (IOException e) {
						// TODO Auto-generated catch block
						falg=-1;
						e.printStackTrace();
					}
					
				}else{
					falg=0;
					df.setImage(df.getImage());
					mydao.update(df);
				}
			}else{
				falg=-2;
			}
		}else{
			falg=-3;
		}
		return falg;
	}
	
	public int delete(int id,String realpath){
		int falg=0;
		Druginfo df=(Druginfo) mydao.findById(Druginfo.class.getName(), id);
		String strsqlin="from Drugstorage where druginfo=?";
		List lstvalin=new ArrayList();
		lstvalin.add(df);
		List listin=mydao.find(strsqlin, lstvalin);
		if(listin.isEmpty()){
			String strsqlout="from Drugdelivery where druginfo=?";
			List lstvalout=new ArrayList();
			lstvalout.add(df);
			List listout=mydao.find(strsqlout, lstvalout);
			if(listout.isEmpty()){
				File oldFile=new File(realpath+"/"+df.getImage());
				if(oldFile.exists()){
					oldFile.delete();
				}
				mydao.delete(df);
				falg=0;
			}else{
				falg=-2;
			}
		}else{
			falg=-1;
		}
		return falg;
	}
	
	public Druginfo finddrug(int id){
		Druginfo df=(Druginfo) mydao.findById(Druginfo.class.getName(), id);
		return df;
	}
	
	public List find(Druginfo df,String keyWord,Page mypage){
		String strsql="from Druginfo where 1=1";
		List lstval=new ArrayList();
		if(keyWord!=null&&!keyWord.equals("")){
			strsql=strsql+" and name like ? or isbn like ?";
			lstval.add("%"+keyWord+"%");
			lstval.add("%"+keyWord+"%");
		}
		mypage.setStrsql(strsql, lstval);
		List list=mydao.find(mypage);
		return list;
	}
}
