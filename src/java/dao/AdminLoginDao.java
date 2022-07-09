package dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;

public class AdminLoginDao {

    static Connection con = null;

    public static ArrayList<AdminLoginBeen> select() {
        ArrayList<AdminLoginBeen> al = new ArrayList<AdminLoginBeen>();
        String q = "select email,password from adminlogin";
        con = MyConnection.getConnection();
        try {
            PreparedStatement ps = con.prepareStatement(q);
            ResultSet rs = ps.executeQuery();
            rs.next();
            AdminLoginBeen fb = new AdminLoginBeen();
            fb.setEmail(rs.getString(1));
            fb.setPassword(rs.getString(2));
            al.add(fb);
        } catch (Exception e) {
            e.printStackTrace();
        }
        return al;
    }

    public static boolean checkUserPassword(AdminLoginBeen fb) {
        boolean f = false;
        String q = "select * from ticketreport where email=? and UserPassword=?";
        con = MyConnection.getConnection();
        try {
            PreparedStatement ps = con.prepareStatement(q);
            ps.setString(1, fb.getEmail());
            ps.setString(2, fb.getPassword());
            ResultSet rs = ps.executeQuery();
            f = rs.next();
        } catch (Exception e) {
            e.printStackTrace();
        }
        return f;
    }
    
    public static boolean checkUser(String email) {
        boolean f = false;
        String q = "select * from ticketreport where email=?";
        con = MyConnection.getConnection();
        try {
            PreparedStatement ps = con.prepareStatement(q);
            ps.setString(1, email);
            ResultSet rs = ps.executeQuery();
            f = rs.next();
        } catch (Exception e) {
            e.printStackTrace();
        }
        return f;
    }

    public static ArrayList<TicketFlightBeen> showUserLogin(AdminLoginBeen fb) {
        ArrayList<TicketFlightBeen> al = new ArrayList<TicketFlightBeen>();
        String q = "SELECT * FROM addflight INNER JOIN ticketreport on addflight.id=ticketreport.aid where email=? and UserPassword=?";
        con = MyConnection.getConnection();
        try {
            PreparedStatement ps = con.prepareStatement(q);
            ps.setString(1, fb.getEmail());
            ps.setString(2, fb.getPassword());
            ResultSet rs = ps.executeQuery();
            while (rs.next()) {
                TicketFlightBeen tb = new TicketFlightBeen();
                tb.setFlightno(rs.getString(1));
                tb.setFlightname(rs.getString(2));
                tb.setFcity(rs.getString(3));
                tb.setTcity(rs.getString(4));
                tb.setDate1(rs.getString(5));
                tb.setTime(rs.getString(6));
                tb.setTicketrate(rs.getInt(7));
                tb.setId(rs.getInt(8));
                tb.setTid(rs.getInt(9));
                tb.setName(rs.getString(10));
                tb.setAadharno(rs.getString(11));
                tb.setMobile(rs.getString(12));
                tb.setEmail(rs.getString(13));
                tb.setPassword(rs.getString(14));
                tb.setAddress(rs.getString(15));
                tb.setGender(rs.getString(16));
                tb.setAid(rs.getInt(17));
                al.add(tb);
            }
        } catch (Exception e) {
            e.printStackTrace();
        }
        return al;
    }

    public static ArrayList<TicketFlightBeen> showUserLogin(String email) {
        ArrayList<TicketFlightBeen> al = new ArrayList<TicketFlightBeen>();
        String q = "SELECT * FROM addflight INNER JOIN ticketreport on addflight.id=ticketreport.aid where email=?";
        con = MyConnection.getConnection();
        try {
            PreparedStatement ps = con.prepareStatement(q);
            ps.setString(1, email);
            ResultSet rs = ps.executeQuery();
            while (rs.next()) {
                TicketFlightBeen tb = new TicketFlightBeen();
                tb.setFlightno(rs.getString(1));
                tb.setFlightname(rs.getString(2));
                tb.setFcity(rs.getString(3));
                tb.setTcity(rs.getString(4));
                tb.setDate1(rs.getString(5));
                tb.setTime(rs.getString(6));
                tb.setTicketrate(rs.getInt(7));
                tb.setId(rs.getInt(8));
                tb.setTid(rs.getInt(9));
                tb.setName(rs.getString(10));
                tb.setAadharno(rs.getString(11));
                tb.setMobile(rs.getString(12));
                tb.setEmail(rs.getString(13));
                tb.setPassword(rs.getString(14));
                tb.setAddress(rs.getString(15));
                tb.setGender(rs.getString(16));
                tb.setAid(rs.getInt(17));
                al.add(tb);
            }
        } catch (Exception e) {
            e.printStackTrace();
        }
        return al;
    }
    
    public static boolean isUserExist(String email) {
        boolean status = false;
        String q = "SELECT * FROM addflight INNER JOIN ticketreport on addflight.id=ticketreport.aid where email=?";
        con = MyConnection.getConnection();
        try {
            PreparedStatement ps = con.prepareStatement(q);
            ps.setString(1, email);
            ResultSet rs = ps.executeQuery();
            status = rs.next();
        } catch (Exception e) {
            e.printStackTrace();
        }
        return status;
    }
}
