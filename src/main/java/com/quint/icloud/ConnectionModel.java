package com.quint.icloud;

import java.sql.*;

public class ConnectionModel 
{
	private static Connection connection;

	public static Connection getConnection() {
		return connection;
	}

	public static void setConnection() throws ClassNotFoundException, SQLException {
		ConnectionModel.connection = DBConnection.getConnection();
	}
}
