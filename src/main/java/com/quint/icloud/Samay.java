package com.quint.icloud;

import java.time.LocalDateTime;
import java.time.format.DateTimeFormatter;

public class Samay 
{
	public static String getSamay()
	{
		DateTimeFormatter dtf = DateTimeFormatter.ofPattern("yyyy/MM/dd HH:mm:ss");  
		LocalDateTime now = LocalDateTime.now();
		return dtf.format(now);
	}
}
