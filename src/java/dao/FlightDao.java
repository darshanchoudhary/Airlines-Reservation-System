package dao;

import java.sql.Connection;

import java.sql.Date;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;

public class FlightDao {

    static Connection con = null;
    static boolean f = false;

    public static boolean insert(FlightBeen fb) {
        try {
            String q = "insert into addflight(flightNo,flightName,fCity,tCity,date,time,ticketRate) values(?,?,?,?,?,?,?)";
            con = MyConnection.getConnection();
            PreparedStatement ps = con.prepareStatement(q);
            ps.setString(1, fb.getFlightno());
            ps.setString(2, fb.getFlightname());
            ps.setString(3, fb.getFcity());
            ps.setString(4, fb.getTcity());
            ps.setDate(5, Date.valueOf(fb.getDate1()));
            ps.setString(6, fb.getTime());
            ps.setInt(7, fb.getTicketrate());
            ps.executeUpdate();
            f = true;
        } catch (Exception e) {
            e.printStackTrace();
        }
        return f;
    }

    public static ArrayList<FlightBeen> select() {
        ArrayList<FlightBeen> al = new ArrayList<FlightBeen>();
        String q = "select * from addflight";
        con = MyConnection.getConnection();
        try {
            PreparedStatement ps = con.prepareStatement(q);
            ResultSet rs = ps.executeQuery();
            while (rs.next()) {
                FlightBeen fb = new FlightBeen();
                fb.setFlightno(rs.getString(1));
                fb.setFlightname(rs.getString(2));
                fb.setFcity(rs.getString(3));
                fb.setTcity(rs.getString(4));
                fb.setDate1(rs.getString(5));
                fb.setTime(rs.getString(6));
                fb.setTicketrate(rs.getInt(7));
                fb.setId(rs.getInt(8));
                al.add(fb);
            }
        } catch (Exception e) {
            e.printStackTrace();
        }
        //System.out.println("Hello Badal1");
        return al;
    }

    public static ArrayList<FlightBeen> searchFlight(String from,String to) {
        ArrayList<FlightBeen> al = new ArrayList<FlightBeen>();
        String q = "select * from addflight where fCity=? and tCity=?";
        con = MyConnection.getConnection();
        try {
            PreparedStatement ps = con.prepareStatement(q);
            FlightBeen fb1 = new FlightBeen();
            ps.setString(1, from);
            ps.setString(2, to);
            ResultSet rs = ps.executeQuery();
            while (rs.next()) {
                FlightBeen fb = new FlightBeen();
                fb.setFlightno(rs.getString(1));
                fb.setFlightname(rs.getString(2));
                fb.setFcity(rs.getString(3));
                fb.setTcity(rs.getString(4));
                fb.setDate1(rs.getString(5));
                fb.setTime(rs.getString(6));
                fb.setTicketrate(rs.getInt(7));
                fb.setId(rs.getInt(8));
                al.add(fb);
            }
        } catch (Exception e) {
            e.printStackTrace();
        }
        //System.out.println("Hello Badal1");
        return al;
    }

    public static ArrayList<FlightBeen> update(int id) {
        ArrayList<FlightBeen> al = new ArrayList<FlightBeen>();
        String q = "select * from addflight where id=?";
        con = MyConnection.getConnection();
        try {
            PreparedStatement ps = con.prepareStatement(q);
            ps.setInt(1, id);
            ResultSet rs = ps.executeQuery();
            rs.next();
            FlightBeen fb = new FlightBeen();
            fb.setFlightno(rs.getString(1));
            fb.setFlightname(rs.getString(2));
            fb.setFcity(rs.getString(3));
            fb.setTcity(rs.getString(4));
            fb.setDate1(rs.getString(5));
            fb.setTime(rs.getString(6));
            fb.setTicketrate(rs.getInt(7));
            fb.setId(rs.getInt(8));
            al.add(fb);
        } catch (Exception e) {
            e.printStackTrace();
        }
        return al;
    }

    public static void delete(int id) {
        try {
            con = MyConnection.getConnection();
            String q = "delete from addflight where id=?";
            PreparedStatement ps = con.prepareStatement(q);
            ps.setInt(1, id);
            ps.executeUpdate();
        } catch (Exception e) {
            e.printStackTrace();
        }
    }

    public static boolean flightUpdate(FlightBeen fb) {
        boolean f = false;
        String q = "update addflight set flightNo=?,flightName=?,fCity=?,tCity=?,date=?,time=?,ticketRate=? where id=?";
        con = MyConnection.getConnection();
        try {
            PreparedStatement ps = con.prepareStatement(q);
            ps.setString(1, fb.getFlightno());
            ps.setString(2, fb.getFlightname());
            ps.setString(3, fb.getFcity());
            ps.setString(4, fb.getTcity());
            ps.setString(5, fb.getDate1());
            ps.setString(6, fb.getTime());
            ps.setInt(7, fb.getTicketrate());
            ps.setInt(8, fb.getId());
            ps.executeUpdate();
            f = true;
        } catch (Exception e) {
            e.printStackTrace();
        }
        return f;
    }

}
