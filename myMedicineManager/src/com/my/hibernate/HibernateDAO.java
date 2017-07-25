package com.my.hibernate;

import java.util.List;

import org.hibernate.Query;
import org.hibernate.Session;
import org.hibernate.Transaction;

import com.my.util.Page;

public class HibernateDAO {
	public Session getSession() {
		return HibernateSessionFactory.getSession();
	}
	
	public List find(String strsql,List lstval){
		List list=null;
		Session session=getSession();
		try{
			Query qo=session.createQuery(strsql);
			for(int i=0;i<lstval.size();i++){
				qo.setParameter(i, lstval.get(i));
			}
			list=qo.list();
		}catch(Exception e){
			e.printStackTrace();
		}finally{
			session.close();
		}
		return list;
	}
	
	public List find(Page mypage){
		List list=null;
		Session session=getSession();
		try{
			Query qo=session.createQuery(mypage.getStrsql());
			if(mypage.getLstval()!=null&&!mypage.getLstval().isEmpty()){
				for(int i=0;i<mypage.getLstval().size();i++){
					qo.setParameter(i, mypage.getLstval().get(i));
				}
			}
			qo.setFirstResult(mypage.getCurrentrecord());
			qo.setMaxResults(mypage.getPagesize());
			list=qo.list();
		}catch(Exception e){
			e.printStackTrace();
		}finally{
			session.close();
		}
		return list;
	}
	
	public List find(String strsql){
		List list=null;
		Session session=getSession();
		try{
			Query qo=session.createQuery(strsql);
			list=qo.list();
		}catch(Exception e){
			e.printStackTrace();
		}finally{
			session.close();
		}
		return list;
	}
	
	public Object findById(String classname,Integer id){
		Object object=null;
		Session session=getSession();
		try{
			object=session.get(classname, id);
		}catch(Exception e){
			e.printStackTrace();
		}finally{
			session.close();
		}
		return object;
	}
	
	public void save(Object transientInstance) {
		Session session=getSession();
		Transaction tx=null;
		try {
			tx=session.beginTransaction();
			session.save(transientInstance);
			tx.commit();
		} catch (RuntimeException re) {
			if(tx!=null) tx.rollback();
			throw re;
		}finally{
			session.close();
		}
	}
	
	public void update(Object transientInstance) {
		Session session=getSession();
		Transaction tx=null;
		try {
			tx=session.beginTransaction();
			session.update(transientInstance);
			tx.commit();
		} catch (RuntimeException re) {
			if(tx!=null) tx.rollback();
			throw re;
		}finally{
			session.close();
		}
	}
	
	public void delete(Object transientInstance) {
		Session session=getSession();
		Transaction tx=null;
		try {
			tx=session.beginTransaction();
			session.delete(transientInstance);
			tx.commit();
		} catch (RuntimeException re) {
			if(tx!=null) tx.rollback();
			throw re;
		}finally{
			session.close();
		}
	}
	
}
