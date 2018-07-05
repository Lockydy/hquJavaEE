package com.hqu.javalrx.jdbc;

import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;

import com.hqulrx.model.getform;
import com.mysql.jdbc.Connection;
import com.mysql.jdbc.PreparedStatement;

public class UserService {

	private Connection connection;
	private PreparedStatement pstmt;
	public UserService() {
		// TODO Auto-generated constructor stub
		connection=new com.hqulrx.conn.connect().getCon();
	}
	public List<getform> queryAllStu(){
		List<getform> stus=new ArrayList<getform>();
		try {
			pstmt=(PreparedStatement)connection.prepareStatement("select * from getform");
			ResultSet rs=pstmt.executeQuery();
			while(rs.next())
			{
				getform form=new getform();
				form.setId(rs.getInt(1));
				form.setDaima(rs.getString(2));
				form.setName(rs.getString(3));
				form.setUnit(rs.getString(4));
				form.setNumber(rs.getDouble(5));
				if(rs.getString(6)!=null)
				form.setMemory(rs.getString(6));
				form.setDate(rs.getString(7));
				form.setWho(rs.getString(8));
				form.setOutterin(rs.getBoolean(9));
				stus.add(form);	
			}
			return stus;
		} catch (Exception e) {
			// TODO: handle exception
			e.printStackTrace();
			return null;
		}
	}
}
