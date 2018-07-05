package com.hqulrx.action;

import java.util.List;
import java.util.Map;

import com.hqulrx.model.adminform;
import com.hqulrx.model.exist;
import com.hqulrx.model.getform;
import com.hqulrx.model.userlogin;
import com.hqulrx.service.AdminService;
import com.hqulrx.service.IUserService;
import com.opensymphony.xwork2.ActionContext;
import com.opensymphony.xwork2.ActionSupport;

import uk.ltd.getahead.dwr.convert.XOMConverter;

public class adminAction extends ActionSupport{
	private adminform user;
	private AdminService adminService;
	private exist xist;
	private int id;
	private exist modi;
	private getform checkedin;
	private String pwd1;
	private String password;
	private String id1;
	private userlogin userlo;
	
	
	public userlogin getUserlo() {
		return userlo;
	}
	public void setUserlo(userlogin userlo) {
		this.userlo = userlo;
	}
	public String getId1() {
		return id1;
	}
	public void setId1(String id1) {
		this.id1 = id1;
	}
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
	public getform getCheckedin() {
		return checkedin;
	}
	public void setCheckedin(getform checkedin) {
		this.checkedin = checkedin;
	}
	public exist getModi() {
		return modi;
	}
	public void setModi(exist modi) {
		this.modi = modi;
	}
	public int getId() {
		return id;
	}
	public void setId(int id) {
		this.id = id;
	}
	public exist getXist() {
		return xist;
	}
	public void setXist(exist xist) {
		this.xist = xist;
	}
	public adminform getUser() {
		return user;
	}
	public void setUser(adminform user) {
		this.user = user;
	}
	
	public AdminService getAdminService() {
		return adminService;
	}
	public void setAdminService(AdminService adminService) {
		this.adminService = adminService;
	}
	public String addadmin() throws Exception{
		Map session=(Map)ActionContext.getContext().getSession();
		adminform user1=new adminform();
		user1.setId(user.getId());
		user1.setPassword(user.getPassword());
		if(adminService.addOrUpdateAdmin(user1)){
			session.put("user", user1);
			return SUCCESS;
		}
		else {
			return ERROR;
		}
		
	}
	public String checkAdmin() throws Exception{
		Map session=(Map)ActionContext.getContext().getSession();
		adminform user1=adminService.checkAdmin(user);
		if(user1!=null){
			session.put("user", user1);
			return SUCCESS;
		}
		else {
			return ERROR;
		}
	}
	public String inform() throws Exception{
		exist xist1=new exist();
		xist1.setDaima(xist.getDaima());
		xist1.setName(xist.getName());
		xist1.setNumber(xist.getNumber());
		xist1.setUnit(xist.getUnit());
		if (adminService.addform(xist1)) {
			return SUCCESS;
		}
		else {
			return ERROR;
		}
	}
	public String getall() throws Exception{
		List xist=adminService.getall();
		Map request=(Map)ActionContext.getContext().get("request");
		request.put("xist", xist);
		return SUCCESS;
	}
	public String Logout() throws Exception{
		Map session=(Map)ActionContext.getContext().getSession();
		session.remove("user");
		return SUCCESS;
	}
	public String modiform() throws Exception{
		exist xist1=adminService.GetrecordById(id);
		Map request=(Map)ActionContext.getContext().get("request");
		request.put("modi", xist1);
		return SUCCESS;
	}
	public String Update() throws Exception{
		exist xist2=new exist();
		xist2.setId(modi.getId());
		xist2.setDaima(modi.getDaima());
		xist2.setName(modi.getName());
		xist2.setNumber(modi.getNumber());
		//System.out.println("Action中update进入函数前5");
		xist2.setUnit(modi.getUnit());
		//System.out.println("Action中update进入函数前6");
		if (adminService.update(xist2)) {
			return SUCCESS;
		}
		else {
			return ERROR;
		}
	}
	public String getAller() throws Exception{
		List xist=adminService.getaller();
		Map request=(Map)ActionContext.getContext().get("request");
		request.put("checked", xist);
		return SUCCESS;
	}
	//记得这个是用来查数据的查数据的查数据的！！！！
	public String  checkedup() throws Exception{
		getform xist1=adminService.GetReById(id);
		Map request=(Map)ActionContext.getContext().get("request");
		request.put("checkedin", xist1);
		return SUCCESS;
	}
	//更新表单
	public String Finaler() throws Exception{
		getform form1=new getform();
		form1.setId(checkedin.getId());
		System.out.println(form1.getId());
		form1.setDate(checkedin.getDate());
		form1.setDaima(checkedin.getDaima());
		form1.setOutterin(checkedin.getOutterin());
		form1.setMemory(checkedin.getMemory());
		form1.setName(checkedin.getName());
		form1.setNumber(checkedin.getNumber());
		form1.setUnit(checkedin.getUnit());
		form1.setWho(checkedin.getWho());
		form1.setResult(checkedin.getResult());
		if (adminService.finaler(form1)) {
			return SUCCESS;
		}
		else {
			return ERROR;
		}
	}
	public String UPDATEpassword()throws Exception{
		Map session=(Map)ActionContext.getContext().getSession();
		adminform user1=(adminform)session.get("user");
		if (user1.getPassword().equals(pwd1)) {
			user1.setPassword(password);
			adminService.addOrUpdateAdmin(user1);
			session.remove("user");
			return SUCCESS;
		}
		else{
			Map request=(Map)ActionContext.getContext().get("request");
			request.put("msg","旧密码错误");
			return ERROR;
		}
	}
	public String deleteone() throws Exception{
		adminService.deleteone(id);
		return SUCCESS;
	}
	public String deleteform() throws Exception{
		adminService.deleteform(id);
		return SUCCESS;
	}
	public String getUsername() throws Exception{
		List xist=adminService.getaller();
		Map request=(Map)ActionContext.getContext().get("request");
		request.put("checked", xist);
		return SUCCESS;
	}
	public String deleteUsername() throws Exception{
		adminService.deleteUsername(id1);
		//System.out.println("action里面的id1是"+id1);
		return SUCCESS;
	}
	public String appUsername() throws Exception{
		userlogin xist1=new userlogin();
		xist1.setId(userlo.getId());
		xist1.setName(userlo.getName());
		xist1.setPassword(userlo.getPassword());
		if (adminService.appUsername(xist1)) {
			return SUCCESS;
		}
		else {
			return ERROR;
		}
	}
}
