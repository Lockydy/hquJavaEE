package com.hqulrx.controller;

import java.util.Map;


import com.hqulrx.model.userlogin;
import com.opensymphony.xwork2.Action;
import com.opensymphony.xwork2.ActionInvocation;
import com.opensymphony.xwork2.interceptor.AbstractInterceptor;

public class logininter extends AbstractInterceptor{

	@Override
	public String intercept(ActionInvocation arg0) throws Exception {
		// TODO Auto-generated method stub
		Map session=(Map)arg0.getInvocationContext().getSession();
		userlogin user=(userlogin)session.get("user");
		if (user==null) {
			return Action.LOGIN;
		}
		return arg0.invoke();
	}
	
}
