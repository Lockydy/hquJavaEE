package com.hqulrx.action;




import java.util.List;
import java.util.Map;

import org.apache.struts2.components.Else;

import com.hqulrx.model.getform;
import com.hqulrx.model.userlogin;
import com.hqulrx.service.IUserService;
import com.hqulrx.service.impl.UserService;
import com.opensymphony.xwork2.ActionContext;
import com.opensymphony.xwork2.ActionSupport;

public class userAction extends ActionSupport{
	private userlogin user;
	private IUserService iuserService;
	private getform form;
	private String pwd1;
	private String password;
	
	public String getPwd1() {
		return pwd1;
	}
	public void setPwd1(String pwd1) {
		this.pwd1 = pwd1;
	}
	public String getPassword() {
		return password;
	}
	public void setPassword(String password) {
		this.password = password;
	}
	public getform getForm() {
		return form;
	}
	public void setForm(getform form) {
		this.form = form;
	}
	public userlogin getUser() {
		return user;
	}
	public void setUser(userlogin user) {
		this.user = user;
	}
	
	public IUserService getIuserService() {
		return iuserService;
	}
	public void setIuserService(IUserService iuserService) {
		this.iuserService = iuserService;
	}
	public String adduser() throws Exception{
		Map session=(Map)ActionContext.getContext().getSession();
		userlogin user1=new userlogin();
		user1.setId(user.getId());
		user1.setPassword(user.getPassword());
		if(iuserService.addOrUpdateUser(user1)){
			return SUCCESS;
		}
		else {
			return ERROR;
		}
		
	}
	public String checkUser() throws Exception{
		Map session=(Map)ActionContext.getContext().getSession();
		userlogin user1=iuserService.checkUser(user);
		if(user1!=null){
			session.put("user", user1);
			return SUCCESS;
		}
		else {
			return ERROR;
		}
	}
	public String inputform() throws Exception{
		getform form1=new getform();
		form1.setDate(form.getDate());
		form1.setDaima(form.getDaima());
		form1.setOutterin(form.getOutterin());
		form1.setMemory(form.getMemory());
		form1.setName(form.getName());
		form1.setNumber(form.getNumber());
		form1.setUnit(form.getUnit());
		form1.setWho(form.getWho());
		if (iuserService.addform(form1)) {
			return SUCCESS;
		}
		else {
			return ERROR;
		}
	}
	public String logout() throws Exception{
		Map session=(Map)ActionContext.getContext().getSession();
		session.remove("user");
		return SUCCESS;
	}
	public String getAll() throws Exception{
		List form=iuserService.getAll();
		Map request=(Map)ActionContext.getContext().get("request");
		request.put("form", form);
		return SUCCESS;
	}
	public String updatepassword()throws Exception{
		Map session=(Map)ActionContext.getContext().getSession();
		userlogin user1=(userlogin)session.get("user");
		if (user1.getPassword().equals(pwd1)) {
			user1.setPassword(password);
			iuserService.addOrUpdateUser(user1);
			session.remove("user");
			return SUCCESS;
		}
		else{
			Map request=(Map)ActionContext.getContext().get("request");
			request.put("msg","旧密码错误");
			return ERROR;
		}
	}
}
