package com.hqulrx.DAO.impl;

import java.util.Iterator;
import java.util.List;

import javax.jms.Session;
import javax.management.Query;
import javax.transaction.Transaction;

import org.hibernate.SessionFactory;

import com.hqulrx.DAO.IUserDAO;
import com.hqulrx.model.getform;
import com.hqulrx.model.userlogin;

public class UserDAO implements IUserDAO {
	private SessionFactory sessionFactory;

	public SessionFactory getSessionFactory() {
		return sessionFactory;
	}

	public void setSessionFactory(SessionFactory sessionFactory) {
		this.sessionFactory = sessionFactory;
	}

	@Override
	public boolean addOrUpdateUser(userlogin user) {
		// TODO Auto-generated method stub
		org.hibernate.Session session=sessionFactory.openSession();
		org.hibernate.Transaction ts=session.beginTransaction();
		session.saveOrUpdate(user);
		ts.commit();
		session.flush();
		session.close();
		return true;
	}

	@Override
	public userlogin checkUser(userlogin user) {
		// TODO Auto-generated method stub
		org.hibernate.Session session=sessionFactory.openSession();
		org.hibernate.Transaction ts=session.beginTransaction();
		//System.out.println(user.getId());
		org.hibernate.Query query=session.createQuery("from userlogin where id='"+user.getId()+"' and password='"+user.getPassword()+"'");
		userlogin user1=new userlogin();
		List list=query.list();
		ts.commit();
		if (list.size()!=0) {
			user1=(userlogin)list.get(0);
			return user1;
		}
		session.flush();
		session.close();
		return null;
	}

	@Override
	public boolean addForm(getform form) {
		// TODO Auto-generated method stub
		org.hibernate.Session session=sessionFactory.openSession();
		org.hibernate.Transaction ts=session.beginTransaction();
		session.saveOrUpdate(form);
		ts.commit();
		session.flush();
		session.close();
		return true;
	}

	@Override
	public List getAll() {
		// TODO Auto-generated method stub
		org.hibernate.Session session=sessionFactory.openSession();
		org.hibernate.Transaction ts=session.beginTransaction();
		org.hibernate.Query query=session.createQuery("from getform");
		List form=query.list();
		ts.commit();
		session.flush();
		session.close();
		return form;
	}
	
	
}
