package dao;

import static dao.FlightDao.con;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;

public class UserDao {

    public static UserBeen getUser(String user) {
        UserBeen ub = new UserBeen();
        String query = "SELECT name,aadharno,mobile,email,UserPassword,address,gender FROM ticketreport where email='"+user+"';";
        con = MyConnection.getConnection();
        try {
            PreparedStatement ps = con.prepareStatement(query);
            ResultSet rs = ps.executeQuery();
            rs.next();
            ub.setName(rs.getString(1));
            ub.setAadharno(rs.getString(2));
            ub.setMobile(rs.getString(3));
            ub.setEmail(rs.getString(4));
            ub.setPassword(rs.getString(5));
            ub.setAddress(rs.getString(6));
            ub.setGender(rs.getString(7));
        } catch (Exception e) {
            e.printStackTrace();
        }
        return ub;
    }
    public static boolean updateUser(UserBeen ub)
    {
        boolean f=false;
        con = MyConnection.getConnection();
        String query = "update ticketreport set name=?,aadharno=?,mobile=?,UserPassword=?,address=?,gender=? where email=?;";
        try{
            PreparedStatement ps = con.prepareStatement(query);
            ps.setString(1,ub.getName());
            ps.setString(2,ub.getAadharno());
            ps.setString(3,ub.getMobile());
            ps.setString(4,ub.getPassword());
            ps.setString(5,ub.getAddress());
            ps.setString(6,ub.getGender());
            ps.setString(7,ub.getEmail());
            System.out.println(ps.executeUpdate());
            f=true;
        }catch(Exception ex){
            System.out.println(ex);
        }
        return f;
    }
    public static boolean changePassword(UserBeen ub)
    {
        boolean f=false;
        con = MyConnection.getConnection();
        String query = "update ticketreport set UserPassword=? where email=?";
        try{
            PreparedStatement ps = con.prepareStatement(query);
            System.out.println(ub.getEmail());
            System.out.println(ub.getPassword());
            ps.setString(1,ub.getPassword());
            ps.setString(2,ub.getEmail());
            int status = ps.executeUpdate();
            if(status >0)
                f=true;
        }
        catch(Exception ex)
        {
            System.out.println(ex);
        }
        return f;
    }
}
