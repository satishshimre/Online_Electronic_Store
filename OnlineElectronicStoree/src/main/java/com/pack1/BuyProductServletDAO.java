package com.pack1;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;

public class BuyProductServletDAO {

    public ProductBean getProduct(String code) {
        ProductBean pb = null;

        try {
            Connection con = DBConnect.connect();   // Make sure DBConnect has connect()
            PreparedStatement ps = con.prepareStatement(
                "SELECT * FROM product WHERE PCODE = ?"
            );

            ps.setString(1, code);
            ResultSet rs = ps.executeQuery();

            if (rs.next()) {
                pb = new ProductBean();
                pb.setP_code(rs.getString("PCODE"));
                pb.setP_name(rs.getString("PNAME"));
                pb.setP_company(rs.getString("PCOMPANY"));
                pb.setP_price(rs.getString("PPRICE"));
                pb.setP_qty(rs.getString("PQTY"));
            }

        } catch (Exception e) {
            e.printStackTrace();
        }

        return pb;
    }

    public int calculatePrice(ProductBean pb, int reqQty) {
        int price = Integer.parseInt(pb.getP_price());
        return price * reqQty;
    }

    public void updateQuantity(String code, int newQty) {
        try {
            Connection con = DBConnect.connect();
            PreparedStatement ps = con.prepareStatement(
                "UPDATE product SET PQTY = ? WHERE PCODE = ?"
            );

            ps.setInt(1, newQty);
            ps.setString(2, code);

            ps.executeUpdate();

        } catch (Exception e) {
            e.printStackTrace();
        }
    }
}
