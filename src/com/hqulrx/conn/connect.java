package com.hqulrx.conn;

import java.sql.DriverManager;

import com.mysql.jdbc.Connection;

public class connect {
	public Connection getCon(){
		try{
			Class.forName("com.mysql.jdbc.Driver");
			String url="jdbc:mysql://localhost/goods?useUnicode=true&characterEncoding=utf-8";
		String user="root";
		String password="root";
		Connection connect=(Connection)DriverManager.getConnection(url,user,password);
		//System.out.println(connect.getMetaData().getURL());
		return connect;
	}
		catch(Exception e){
			e.printStackTrace();
			return null;
		}
	}
}
