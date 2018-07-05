package com.hqu.javalrx.jdbc;

import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;

import com.hqulrx.model.exist;
import com.hqulrx.model.userlogin;
import com.mysql.jdbc.Connection;
import com.mysql.jdbc.PreparedStatement;

public class AdminService {
	private Connection connection;
	private PreparedStatement pstmt;
	public AdminService() {
		// TODO Auto-generated constructor stub
		connection=new com.hqulrx.conn.connect().getCon();
	}
	public List<exist> queryAll(){
		List<exist> stus=new ArrayList<exist>();
		try {
			pstmt=(PreparedStatement)connection.prepareStatement("select * from exist");
			ResultSet rs=pstmt.executeQuery();
			while(rs.next())
			{
				exist form=new exist();
				form.setId(rs.getInt(1));
				form.setDaima(rs.getString(5));
				form.setName(rs.getString(2));
				form.setUnit(rs.getString(4));
				form.setNumber(rs.getDouble(3));
				stus.add(form);	
			}
			return stus;
		} catch (Exception e) {
			// TODO: handle exception
			e.printStackTrace();
			return null;
		}
	}
	public List<userlogin> queryUSER(){
		List<userlogin> stus=new ArrayList<userlogin>();
		try {
			pstmt=(PreparedStatement)connection.prepareStatement("select * from userlogin");
			ResultSet rs=pstmt.executeQuery();
			while(rs.next())
			{
				userlogin form=new userlogin();
				form.setId(rs.getString(1));
				form.setName(rs.getString(3));
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
