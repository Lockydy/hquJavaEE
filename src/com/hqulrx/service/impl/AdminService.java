package com.hqulrx.service.impl;

import java.util.List;

import com.hqulrx.DAO.AdminDAO;
import com.hqulrx.model.adminform;
import com.hqulrx.model.exist;
import com.hqulrx.model.getform;
import com.hqulrx.model.userlogin;

public class AdminService  implements com.hqulrx.service.AdminService{
	private AdminDAO adminDAO;
	private adminform adminer;
	
	
	public AdminDAO getAdminDAO() {
		return adminDAO;
	}
	public void setAdminDAO(AdminDAO adminDAO) {
		this.adminDAO = adminDAO;
	}
	public adminform getAdminer() {
		return adminer;
	}
	public void setAdminer(adminform adminer) {
		this.adminer = adminer;
	}
	@Override
	public boolean addOrUpdateAdmin(adminform admin) {
		// TODO Auto-generated method stub
		return adminDAO.addOrUpdateAdmin(admin);
	}
	@Override
	public adminform checkAdmin(adminform admin) {
		// TODO Auto-generated method stub
		return adminDAO.checkAdmin(admin);
	}
	@Override
	public boolean addform(exist xist) {
		// TODO Auto-generated method stub
		return adminDAO.addForm(xist);
	}
	@Override
	public List getall() {
		// TODO Auto-generated method stub
		return adminDAO.getall();
	}
	@Override
	public exist GetrecordById(int id) {
		// TODO Auto-generated method stub
		return adminDAO.GetrecordById(id);
	}
	@Override
	public boolean update(exist xist) {
		// TODO Auto-generated method stub
		//System.out.println("service文件开始执行");
		return adminDAO.update(xist);
	}
	@Override
	public List getaller() {
		// TODO Auto-generated method stub
		return adminDAO.getaller();
	}
	@Override
	public getform GetReById(int id) {
		// TODO Auto-generated method stub
		return adminDAO.GetReById(id);
	}
	@Override
	public boolean finaler(getform form) {
		// TODO Auto-generated method stub
		return adminDAO.finaler(form);
	}
	@Override
	public boolean deleteone(int id) {
		// TODO Auto-generated method stub
		return adminDAO.deleteone(id);
	}
	@Override
	public boolean deleteform(int id) {
		// TODO Auto-generated method stub
		return adminDAO.deleteform(id);
	}
	@Override
	public List getUsername() {
		// TODO Auto-generated method stub
		return adminDAO.getUsername();
	}
	@Override
	public boolean deleteUsername(String id) {
		// TODO Auto-generated method stub
		return adminDAO.deleteUsername(id);
	}
	@Override
	public boolean appUsername(userlogin userlo) {
		// TODO Auto-generated method stub
		return adminDAO.appUsername(userlo);
	}
	
	
}
