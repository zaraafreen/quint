package com.quint.icloud;

import java.sql.*;

public class DBConnection 
{
	public static Connection getConnection() throws SQLException, ClassNotFoundException
	{
		Class.forName("org.postgresql.Driver");
		String url = "jdbc:postgresql://ec2-34-233-214-228.compute-1.amazonaws.com:5432/d8dta69beu67am?sslmode=require";
		String name = "ndbfikxtiwvflf";
		String password = "2f076010f16e21650261065d3ba84751cfc42e1293870280f2c15abf1e4ffba8";
		return DriverManager.getConnection(url, name, password);
	}
}
 