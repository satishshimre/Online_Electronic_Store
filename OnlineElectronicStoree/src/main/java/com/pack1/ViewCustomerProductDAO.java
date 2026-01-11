package com.pack1;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;

public class ViewCustomerProductDAO {

    public ArrayList<ProductBean> fetchProducts() {

        ArrayList<ProductBean> list = new ArrayList<>();

        try {
            Connection con = DBConnect.connect();
            PreparedStatement pstmt = con.prepareStatement("SELECT * FROM product");
            ResultSet rs = pstmt.executeQuery();

            while (rs.next()) {
                ProductBean pb = new ProductBean();
                pb.setP_code(rs.getString(1));
                pb.setP_name(rs.getString(2));
                pb.setP_company(rs.getString(3));
                pb.setP_price(rs.getString(4));
                pb.setP_qty(rs.getString(5));
                list.add(pb);
            }

        } catch (Exception e) {
            e.printStackTrace();
        }

        return list;
    }
}
