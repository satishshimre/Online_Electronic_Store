package com.pack1;

import java.sql.Connection;
import java.sql.PreparedStatement;

public class CustomerRegistrationDAO 
{
	public int insert_newCustomerRecord(CustomerBean cb)
	{
		int rowCount=0;
		
		try 
		{
			Connection con=DBConnect.connect();
			PreparedStatement pstmt=con.prepareStatement("insert into customer values (?,?,?,?,?,?,?)");
			pstmt.setString(1, cb.getC_uname());
			pstmt.setString(2, cb.getC_pwd());
			pstmt.setString(3, cb.getC_fname());
			pstmt.setString(4, cb.getC_lname());
			pstmt.setString(5, cb.getC_addr());
			pstmt.setString(6, cb.getC_mail());
			pstmt.setString(7, cb.getC_phn());
			rowCount=pstmt.executeUpdate();
		} 
		catch (Exception e) 
		{
			e.printStackTrace();
		}
		return rowCount;
	}
}
