package com.hqulrx.DAO.impl;

import java.util.List;


import org.hibernate.SessionFactory;

import com.hqulrx.DAO.AdminDAO;
import com.hqulrx.model.adminform;
import com.hqulrx.model.exist;
import com.hqulrx.model.getform;
import com.hqulrx.model.userlogin;

public class adminDAO implements AdminDAO{
	private SessionFactory sessionFactory;

	public SessionFactory getSessionFactory() {
		return sessionFactory;
	}

	public void setSessionFactory(SessionFactory sessionFactory) {
		this.sessionFactory = sessionFactory;
	}

	@Override
	public boolean addOrUpdateAdmin(adminform admin) {
		// TODO Auto-generated method stub
		org.hibernate.Session session=sessionFactory.openSession();
		org.hibernate.Transaction ts=session.beginTransaction();
		session.saveOrUpdate(admin);
		ts.commit();
		session.flush();
		session.close();
		return true;
	}

	@Override
	public adminform checkAdmin(adminform admin) {
		// TODO Auto-generated method stub
		org.hibernate.Session session=sessionFactory.openSession();
		org.hibernate.Transaction ts=session.beginTransaction();
		org.hibernate.Query query=session.createQuery("from adminform where id='"+admin.getId()+"' and password='"+admin.getPassword()+"'");
		//System.out.println(admin.getId());
		//System.out.println(admin.getPassword());
		adminform user1=new adminform();
		List list=query.list();
		ts.commit();
		session.flush();
		session.close();
		if (list.size()!=0) {
			user1=(adminform)list.get(0);
			return user1;
		}
		return null;
	}

	@Override
	public boolean addForm(exist xist) {
		// TODO Auto-generated method stub
		org.hibernate.Session session=sessionFactory.openSession();
		org.hibernate.Transaction ts=session.beginTransaction();
		session.saveOrUpdate(xist);
		session.flush();
		session.clear();
		ts.commit();
		session.close();
		return true;
	}

	@Override
	public List getall() {
		// TODO Auto-generated method stub
		org.hibernate.Session session=sessionFactory.openSession();
		org.hibernate.Transaction ts=session.beginTransaction();
		org.hibernate.Query query=session.createQuery("from exist");
		List xist=query.list();
		ts.commit();
		session.close();
		return xist;
	}

	@Override
	public exist GetrecordById(int id) {
		// TODO Auto-generated method stub
		org.hibernate.Session session=sessionFactory.openSession();
		org.hibernate.Transaction ts=session.beginTransaction();
		org.hibernate.Query query=session.createQuery("from exist where id="+id);
		List xist=query.list();
		ts.commit();
		session.flush();
		session.close();
		return (exist)xist.get(0);
	}

	@Override
	public boolean update(exist xist) {
		//System.out.println("DAO文件开始执行");
		// TODO Auto-generated method stub
		org.hibernate.Session session=sessionFactory.openSession();
		org.hibernate.Transaction ts=session.beginTransaction();
		session.saveOrUpdate(xist);
		session.flush();
		session.clear();
		ts.commit();
		session.close();
		//System.out.println("DAO文件结束执行");
		return true;
	}

	@Override
	public List getaller() {
		// TODO Auto-generated method stub
		org.hibernate.Session session=sessionFactory.openSession();
		org.hibernate.Transaction ts=session.beginTransaction();
		org.hibernate.Query query=session.createQuery("from getform");
		List xist=query.list();
		ts.commit();
		session.flush();
		session.close();
		return xist;
	}

	@Override
	public getform GetReById(int id) {
		// TODO Auto-generated method stub
		org.hibernate.Session session=sessionFactory.openSession();
		org.hibernate.Transaction ts=session.beginTransaction();
		org.hibernate.Query query=session.createQuery("from getform where id="+id);
		List xist=query.list();
		ts.commit();
		session.flush();
		session.close();
		return (getform)xist.get(0);
	}

	@Override
	public boolean finaler(getform form) {
		// TODO Auto-generated method stub
		org.hibernate.Session session=sessionFactory.openSession();
		org.hibernate.Transaction ts=session.beginTransaction();
		session.saveOrUpdate(form);
		session.flush();
		session.clear();
		ts.commit();
		session.close();
		return true;
	}

	@Override
	public boolean deleteone(int id) {
		// TODO Auto-generated method stub
		org.hibernate.Session session=sessionFactory.openSession();
		org.hibernate.Transaction ts=session.beginTransaction();
		org.hibernate.Query query=session.createQuery("from getform where id="+id);
		List formers=query.list();
		session.delete((getform)formers.get(0));
		ts.commit();
		session.close();
		return true;
	}

	@Override
	public boolean deleteform(int id) {
		// TODO Auto-generated method stub
		org.hibernate.Session session=sessionFactory.openSession();
		org.hibernate.Transaction ts=session.beginTransaction();
		org.hibernate.Query query=session.createQuery("from exist where id="+id);
		List formers=query.list();
		session.delete((exist)formers.get(0));
		ts.commit();
		session.close();
		return true;
	}

	@Override
	public List getUsername() {
		// TODO Auto-generated method stub
		org.hibernate.Session session=sessionFactory.openSession();
		org.hibernate.Transaction ts=session.beginTransaction();
		org.hibernate.Query query=session.createQuery("from userlogin");
		List xist=query.list();
		ts.commit();
		session.flush();
		session.close();
		return xist;
	}

	@Override
	public boolean deleteUsername(String id1) {
		// TODO Auto-generated method stub
		//System.out.println("此时id是"+id1);
		org.hibernate.Session session=sessionFactory.openSession();
		org.hibernate.Transaction ts=session.beginTransaction();
		org.hibernate.Query query=session.createQuery("from userlogin where id="+id1);
		List forme=query.list();
		System.out.println(forme.size());
		session.delete((userlogin)forme.get(0));
		ts.commit();
		session.close();
		return true;
	}

	@Override
	public boolean appUsername(userlogin userlo) {
		// TODO Auto-generated method stub
		org.hibernate.Session session=sessionFactory.openSession();
		org.hibernate.Transaction ts=session.beginTransaction();
		session.saveOrUpdate(userlo);
		session.flush();
		session.clear();
		ts.commit();
		session.close();
		return true;
	}



	
	
}
