package com.pack1;

import java.sql.Connection;
import java.sql.DriverManager;

public class DBConnect 
{
	private static Connection con=null;
	
	private DBConnect() {}

	static
	{
		try
		{
			Class.forName("oracle.jdbc.driver.OracleDriver");
			con=DriverManager.getConnection(DBInfo.dbURL, DBInfo.dbUName, DBInfo.dbPwd );
		}
		catch (Exception e) {
			e.printStackTrace();
			System.out.println("Database not connected");
		}
	}
	public static Connection connect()
	{
		return con;
	}
}
