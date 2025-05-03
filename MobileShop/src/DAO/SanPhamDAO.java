package DAO;

import DB.DBConnect;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.Collections;

import Model.SanPham;

public class SanPhamDAO{
public ArrayList<SanPham> searchSanPham(String keyword) {
    ArrayList<SanPham> list = new ArrayList<>();
    Connection connection = DBConnect.CreateConnection();
    String sql = "SELECT * FROM SanPham WHERE TenSP LIKE ?";
    try {
        PreparedStatement ps = connection.prepareStatement(sql);
        ps.setString(1, "%" + keyword + "%");
        ResultSet rs = ps.executeQuery();
        while (rs.next()) {
            SanPham sp = new SanPham();
            sp.setMaSP(rs.getString("MaSP"));
            sp.setTenSP(rs.getString("TenSP"));
            sp.setMaCM(rs.getString("MaCM"));
            sp.setGia(rs.getLong("Gia"));
            sp.setHinhAnh(rs.getString("HinhAnh"));
            list.add(sp);
        }
    } catch (SQLException e) {
        e.printStackTrace();
    } finally {
        try {
            if (connection != null) connection.close();
        } catch (SQLException e) {
            e.printStackTrace();
        }
    }
    return list;
}
public static ArrayList<SanPham> getListSanPhamCM(String MaCM) {
    Connection cons = DBConnect.CreateConnection();
    String sql = "SELECT * FROM SanPham where MaCM='"+MaCM+"'";
    ArrayList<SanPham> list = new ArrayList<>();
    try {
        PreparedStatement ps = (PreparedStatement) cons.prepareStatement(sql);
        ResultSet rs = ps.executeQuery();
        while (rs.next()) {
            SanPham sp= new SanPham();
            sp.setMaSP(rs.getString("MaSP"));
            sp.setTenSP(rs.getString("TenSP"));
            sp.setMaCM(rs.getString("MaCM"));
            sp.setGia(rs.getLong("Gia"));
            sp.setHinhAnh(rs.getString("HinhAnh"));
            list.add(sp);
        }
        cons.close();
    } catch (SQLException e) {
        e.printStackTrace();
    }
    return list;
}

public static ArrayList<SanPham> getListSanPham() {
    Connection cons = DBConnect.CreateConnection();
    String sql = "SELECT * FROM SanPham";
    ArrayList<SanPham> list = new ArrayList<>();
    try {
        PreparedStatement ps = (PreparedStatement) cons.prepareStatement(sql);
        ResultSet rs = ps.executeQuery();
        while (rs.next()) {
            SanPham sp= new SanPham();
            sp.setMaSP(rs.getString("MaSP"));
            sp.setTenSP(rs.getString("TenSP"));
            sp.setMaCM(rs.getString("MaCM"));
            sp.setGia(rs.getLong("Gia"));
            sp.setHinhAnh(rs.getString("HinhAnh"));
            list.add(sp);
        }
        cons.close();
    } catch (SQLException e) {
        e.printStackTrace();
    }
    return list;
}

public static SanPham getSanPham(String MaSP) throws SQLException{

	Connection conn=DBConnect.CreateConnection();
	String sql="SELECT * FROM SanPham WHERE MaSP='"+MaSP+"'";
	PreparedStatement ps=conn.prepareCall(sql);
	ResultSet rs=ps.executeQuery();
	SanPham sp=new SanPham();
	while(rs.next())
	{
		sp.setTenSP(rs.getString("TenSP"));
		sp.setGia(rs.getLong("Gia"));
		sp.setHinhAnh(rs.getString("HinhAnh"));
	}
	return sp;
	}

public static ArrayList<SanPham> ListSanPham() {
    Connection cons = DBConnect.CreateConnection();
    String sql = "SELECT * FROM SanPham";
    ArrayList<SanPham> list = new ArrayList<>();
    try {
        PreparedStatement ps = (PreparedStatement) cons.prepareStatement(sql);
        ResultSet rs = ps.executeQuery();
        while (rs.next()) {
            SanPham sp= new SanPham();
            sp.setMaSP(rs.getString("MaSP"));
            sp.setTenSP(rs.getString("TenSP"));
            sp.setMaCM(rs.getString("MaCM"));
            sp.setGia(rs.getLong("Gia"));
            sp.setHinhAnh(rs.getString("HinhAnh"));
            list.add(sp);
        }
        cons.close();
    } catch (SQLException e) {
        e.printStackTrace();
    }
    return list;
}

public static boolean insert_SanPham(SanPham sp) throws SQLException {
try {
    Connection connection = DBConnect.CreateConnection();
    String sql = "INSERT INTO SanPham VALUE(?,?,?,?,?)";
    PreparedStatement ps = connection.prepareCall(sql);
    ps.setString(1, sp.getMaSP());
    ps.setString(2, sp.getTenSP());
    ps.setString(3, sp.getMaCM());
    ps.setLong(4, sp.getGia());
    ps.setString(5, sp.getHinhAnh());
    int temp = ps.executeUpdate();
    return temp == 1;
} catch (Exception e) {
    return false;
}
}

//f5
public static boolean update_SanPham(SanPham sp) throws SQLException {
try {
    Connection connection = DBConnect.CreateConnection();
    String sql = "UPDATE SanPham SET TenSP = ? ,MaCM=?, Gia=?,HinhAnh=? WHERE MaSP = ?";
    PreparedStatement ps = connection.prepareCall(sql);
    ps.setString(1, sp.getTenSP());
    ps.setString(2, sp.getMaCM());
    ps.setLong(3, sp.getGia());
    ps.setString(4, sp.getHinhAnh());
    ps.setString(5, sp.getMaSP());
    int temp = ps.executeUpdate();
    return temp == 1;
} catch (Exception e) {
    return false;
}
}


public static boolean delete_SanPham(String MaSP) throws SQLException {
try {
   Connection connection = DBConnect.CreateConnection();
   String sql = "DELETE FROM SanPham WHERE MaSP = ?";
   PreparedStatement ps = connection.prepareCall(sql);
   ps.setString(1, MaSP);
   int temp = ps.executeUpdate();
       return temp == 1;
} catch (Exception e) {
   return false;
}
}
}