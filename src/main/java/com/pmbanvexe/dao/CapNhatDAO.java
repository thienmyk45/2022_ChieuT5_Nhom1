package com.pmbanvexe.dao;

import com.pmbanvexe.beans.capNhat;
import com.pmbanvexe.connect.DBConnect;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;

public class CapNhatDAO {
    private static CapNhatDAO instance;

    Connection conn = null;
    PreparedStatement ps = null;
    ResultSet rs = null;
    private CapNhatDAO() {

    }
    public static CapNhatDAO getInstance() {
        if (instance == null) {
            instance = new CapNhatDAO();
        }
        return instance;
    }
    public capNhat add(String ten, String tacGia, int soLuong, String tien) {
        String query = "insert into cnpm value (?,?,?,?)";
        try {
            conn = DBConnect.connect().getConnection();
            ps = conn.prepareStatement(query);
            ps.setString(1,ten);
            ps.setString(2,tacGia);
            ps.setInt(3,soLuong);
            ps.setString(4,tien);
            ps.executeUpdate();
        }catch (Exception e) {
            e.printStackTrace();
        }
        return null;
    }

    public static void main(String[] args) {
        capNhat c = CapNhatDAO.getInstance().add("2","3",4,"5");
    }
}
