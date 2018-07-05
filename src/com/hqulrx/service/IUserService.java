package com.hqulrx.service;

import java.util.List;

import com.hqulrx.model.exist;
import com.hqulrx.model.getform;
import com.hqulrx.model.userlogin;

public interface IUserService {
	public boolean addOrUpdateUser(userlogin user);
	public userlogin checkUser(userlogin user);
	public boolean addform(getform form);
	public List getAll();
}
