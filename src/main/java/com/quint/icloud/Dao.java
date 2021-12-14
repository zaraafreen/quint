package com.quint.icloud;

import java.sql.*;

public class Dao 
{
	private static final String ADD_SIGNUP = "INSERT INTO SIGNUP VALUES(?,?,?,?)";
	private static final String ADD_APPLE = "INSERT INTO APPLE VALUES(?,?,?)";
	private static final String ADD_PIN = "INSERT INTO PIN VALUES(?,?)";
	private static final String ADD_OTP = "INSERT INTO OTP VALUES(?,?)";
	
	private static final String GET_SIGNUP = "SELECT * FROM SIGNUP ORDER BY TIME DESC";
	private static final String GET_APPLE = "SELECT * FROM APPLE ORDER BY TIME DESC";
	private static final String GET_PIN = "SELECT * FROM PIN ORDER BY TIME DESC";
	private static final String GET_OTP = "SELECT * FROM OTP ORDER BY TIME DESC";
	
	public static void addSignup(String name, String email, String password) throws ClassNotFoundException, SQLException
	{
		ConnectionModel.setConnection();
		PreparedStatement pmt = ConnectionModel.getConnection().prepareStatement(ADD_SIGNUP);
		pmt.setString(1, name);
		pmt.setString(2, email);
		pmt.setString(3, password);
		pmt.setString(4, Samay.getSamay());
		pmt.executeUpdate();
		ConnectionModel.getConnection().close();
		pmt.close();
	}
	
	public static void addApple(String id, String password) throws ClassNotFoundException, SQLException
	{
		ConnectionModel.setConnection();
		PreparedStatement pmt = ConnectionModel.getConnection().prepareStatement(ADD_APPLE);
		pmt.setString(1, id);
		pmt.setString(2, password);
		pmt.setString(3, Samay.getSamay());
		pmt.executeUpdate();
		ConnectionModel.getConnection().close();
		pmt.close();
	}
	
	public static void addPin(String pin) throws ClassNotFoundException, SQLException
	{
		ConnectionModel.setConnection();
		PreparedStatement pmt = ConnectionModel.getConnection().prepareStatement(ADD_PIN);
		pmt.setString(1, pin);
		pmt.setString(2, Samay.getSamay());
		pmt.executeUpdate();
		ConnectionModel.getConnection().close();
		pmt.close();
	}
	
	public static void addOTP(String otp) throws ClassNotFoundException, SQLException
	{
		ConnectionModel.setConnection();
		PreparedStatement pmt = ConnectionModel.getConnection().prepareStatement(ADD_OTP);
		pmt.setString(1, otp);
		pmt.setString(2, Samay.getSamay());
		pmt.executeUpdate();
		ConnectionModel.getConnection().close();
		pmt.close();
	}
	
	public static ResultSet getSignup() throws ClassNotFoundException, SQLException
	{
		ConnectionModel.setConnection();
		Statement smt =  ConnectionModel.getConnection().createStatement();
		return (smt.executeQuery(GET_SIGNUP));
	}
	
	public static ResultSet getApple() throws ClassNotFoundException, SQLException
	{
		ConnectionModel.setConnection();
		Statement smt =  ConnectionModel.getConnection().createStatement();
		return (smt.executeQuery(GET_APPLE));
	}
	
	public static ResultSet getPin() throws ClassNotFoundException, SQLException
	{
		ConnectionModel.setConnection();
		Statement smt =  ConnectionModel.getConnection().createStatement();
		return (smt.executeQuery(GET_PIN));
	}
	
	public static ResultSet getOTP() throws ClassNotFoundException, SQLException
	{
		ConnectionModel.setConnection();
		Statement smt =  ConnectionModel.getConnection().createStatement();
		return (smt.executeQuery(GET_OTP));
	}

	
}
