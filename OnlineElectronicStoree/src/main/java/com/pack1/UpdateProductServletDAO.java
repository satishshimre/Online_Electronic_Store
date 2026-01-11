package com.pack1;

import java.sql.Connection;
import java.sql.PreparedStatement;

public class UpdateProductServletDAO 
{
	public int updateQty(String code, int purchased)
	{
		int rowCount = 0;
		try 
		{
			Connection con = DBConnect.connect();
			
			PreparedStatement pstmt = con.prepareStatement("update product set pqty = pqty - ? where pcode = ?");
		
			pstmt.setInt(1, purchased);
			pstmt.setString(1, code);
			
			rowCount=pstmt.executeUpdate();
		}
		catch (Exception e) 
		{
			e.printStackTrace();
		}
		return rowCount;
	}
}
