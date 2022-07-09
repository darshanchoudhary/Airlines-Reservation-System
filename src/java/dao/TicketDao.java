package dao;

import java.sql.Connection;
import java.sql.Date;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;

public class TicketDao {

    static Connection con = null;

    public static boolean bookTicket(String user, int id) {
        boolean f = false;
        try {
            String q = "update ticketreport set aid=? where email=?";
            con = MyConnection.getConnection();
            PreparedStatement ps = con.prepareStatement(q);
            ps.setInt(1, id);
            ps.setString(2, user);
            ps.executeUpdate();
            f = true;
        } catch (Exception e) {
            e.printStackTrace();
        }
        return f;
    }

    public static boolean saveUser(TicketBeen tb) {
        boolean f = false;
        try {
            String q = "insert into ticketreport(name,aadharno,mobile,email,UserPassword,address,gender) values(?,?,?,?,?,?,?)";
            con = MyConnection.getConnection();
            PreparedStatement ps = con.prepareStatement(q);
            ps.setString(1, tb.getName());
            ps.setString(2, tb.getAadharno());
            ps.setString(3, tb.getMobile());
            ps.setString(4, tb.getEmail());
            ps.setString(5, tb.getPassword());
            ps.setString(6, tb.getAddress());
            ps.setString(7, tb.getGender());
            ps.executeUpdate();
            f = true;
        } catch (Exception e) {
            e.printStackTrace();
        }
        return f;
    }

    public static ArrayList<TicketBeen> select() {
        ArrayList<TicketBeen> al = new ArrayList<TicketBeen>();
        String q = "SELECT addflight.flightNo,addflight.flightName,addflight.fCity,addflight.tCity, addflight.date,addflight.time,"
                + "addflight.ticketRate, ticketreport.name,ticketreport.gender,ticketreport.aadharno,ticketreport.mobile,"
                + "ticketreport.email,ticketreport.address FROM addflight INNER JOIN ticketreport  where ticketreport.aid!=null or ticketreport.aid!=0;";
        con = MyConnection.getConnection();
        try {
            PreparedStatement ps = con.prepareStatement(q);
            ResultSet rs = ps.executeQuery();
            while (rs.next()) {
                TicketBeen tb = new TicketBeen();
                tb.setFlightno(rs.getString(1));
                tb.setFlightname(rs.getString(2));
                tb.setFcity(rs.getString(3));
                tb.setTcity(rs.getString(4));
                tb.setDate1(rs.getString(5));
                tb.setTime(rs.getString(6));
                tb.setTicketrate(rs.getInt(7));
                tb.setName(rs.getString(8));
                tb.setGender(rs.getString(9));
                tb.setAadharno(rs.getString(10));
                tb.setMobile(rs.getString(11));
                tb.setEmail(rs.getString(12));
                tb.setAddress(rs.getString(13));
                al.add(tb);
            }
        } catch (Exception e) {
            e.printStackTrace();
        }
        return al;
    }

    public static void cancelTicket(int id1) {
        try {
            con = MyConnection.getConnection();
            String q = "delete from ticketreport where tid=?";
            PreparedStatement ps = con.prepareStatement(q);
            ps.setInt(1, id1);
            ps.executeUpdate();
        } catch (Exception e) {
            e.printStackTrace();
        }
    }

    public static TicketBeen comTicket(int id) {
        String q = "SELECT addflight.flightNo,addflight.flightName,addflight.fCity,addflight.tCity, addflight.date,addflight.time,"
                + "addflight.ticketRate, ticketreport.name,ticketreport.gender,ticketreport.aadharno,ticketreport.mobile,"
                + "ticketreport.email,ticketreport.address FROM addflight INNER JOIN ticketreport where tid=" + id;
        TicketBeen tb = new TicketBeen();
        con = MyConnection.getConnection();
        try {
            PreparedStatement ps = con.prepareStatement(q);
            ResultSet rs = ps.executeQuery();
            rs.next();
            tb.setFlightno(rs.getString(1));
            tb.setFlightname(rs.getString(2));
            tb.setFcity(rs.getString(3));
            tb.setTcity(rs.getString(4));
            tb.setDate1(rs.getString(5));
            tb.setTime(rs.getString(6));
            tb.setTicketrate(rs.getInt(7));
            tb.setName(rs.getString(8));
            tb.setGender(rs.getString(9));
            tb.setAadharno(rs.getString(10));
            tb.setMobile(rs.getString(11));
            tb.setEmail(rs.getString(12));
            tb.setAddress(rs.getString(13));
        } catch (Exception e) {
            e.printStackTrace();
        }
        return tb;
    }
}
