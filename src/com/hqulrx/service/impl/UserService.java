package com.hqulrx.service.impl;

import java.util.List;

import com.hqulrx.DAO.IUserDAO;
import com.hqulrx.model.getform;
import com.hqulrx.model.userlogin;
import com.hqulrx.service.IUserService;

public  class UserService implements IUserService{
	private IUserDAO userDAO;
	private userlogin user;
	public IUserDAO getUserDAO() {
		return userDAO;
	}
	public void setUserDAO(IUserDAO userDAO) {
		this.userDAO = userDAO;
	}
	public userlogin getUser() {
		return user;
	}
	public void setUser(userlogin user) {
		this.user = user;
	}
	@Override
	public boolean addOrUpdateUser(userlogin user) {
		// TODO Auto-generated method stub
		return userDAO.addOrUpdateUser(user);
	}
	@Override
	public userlogin checkUser(userlogin user) {
		// TODO Auto-generated method stub
		return userDAO.checkUser(user);
	}
	@Override
	public boolean addform(getform form) {
		// TODO Auto-generated method stub
		return userDAO.addForm(form);
	}
	@Override
	public List getAll() {
		// TODO Auto-generated method stub
		return userDAO.getAll();
	}
	
}
