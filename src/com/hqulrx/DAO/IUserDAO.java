package com.hqulrx.DAO;

import java.util.List;

import com.hqulrx.model.getform;
import com.hqulrx.model.userlogin;

public interface IUserDAO {
	public boolean addOrUpdateUser(userlogin user);
	public userlogin checkUser(userlogin user);
	public boolean addForm(getform form);
	public List getAll();
}
