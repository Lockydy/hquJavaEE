package com.hqulrx.service;

import java.util.List;

import com.hqulrx.model.adminform;
import com.hqulrx.model.exist;
import com.hqulrx.model.getform;
import com.hqulrx.model.userlogin;

public interface AdminService {
	public boolean addOrUpdateAdmin(adminform admin);
	public adminform checkAdmin(adminform admin);
	public boolean addform(exist xist);
	public List getall();
	public exist GetrecordById(int id);
	public boolean update(exist xist);
	public List getaller();
	public getform GetReById(int id);
	public boolean finaler(getform form);
	public boolean deleteone(int id);
	public boolean deleteform(int id);
	public List getUsername();
	public boolean deleteUsername(String id);
	public boolean appUsername(userlogin userlo);
}
