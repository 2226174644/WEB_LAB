package DAO;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;

public class LoginDao {
    Connection conn = DBConn.openDb();
    // 数据库连接对象
    PreparedStatement pstmt;

    public Login checkLogin(String name, String password) {
        // 验证用户名密码
        try {
            pstmt = conn.prepareStatement("select* from comm_sys_user where loginName=?and password=?");
            pstmt.setString(1, name);
            // 设置SQL语句参数
            pstmt.setString(2, password);
            // 设置SQL语句参数
            ResultSet rs = pstmt.executeQuery();
            // 执行查询，返回结果集
            if (rs.next()) {
                // 通过JavaBean保存值
                Login login = new Login();
                login.setId(rs.getInt(1));
                login.setName(rs.getString(2));
                login.setPassword(rs.getString(3));

                //login.setRole(rs.getInt(4));
                return login;
                // 返回JavaBean对象
            }
            return null;
            // 验证失败返回null
        } catch (Exception e) {
            e.printStackTrace();
            return null;
        }
    }

    public ArrayList<MessBor> findMbInfo() {
        try {
            ArrayList<MessBor> al = new ArrayList<MessBor>();
            pstmt = conn.prepareStatement("select * from web_201800301278_comments");
            ResultSet rs = pstmt.executeQuery();
            while (rs.next()) {
                MessBor mb = new MessBor();
                mb.setId(rs.getInt(1));
                mb.setName(rs.getString(2));
                mb.setTime(rs.getDate(3));
                mb.setTitle(rs.getString(4));
                mb.setMessage(rs.getString(5));
                al.add(mb);
            }
            return al;
        } catch (Exception e) {
            e.printStackTrace();
            return null;
        }
    }
    public ArrayList<MessBor> findMbReply() {
        try {
            ArrayList<MessBor> bl = new ArrayList<MessBor>();
            pstmt = conn.prepareStatement("select * from web_201800301278_reply");
            ResultSet rs = pstmt.executeQuery();
            while (rs.next()) {
                MessBor mb = new MessBor();
                mb.setId(rs.getInt(1));
                mb.setName(rs.getString(2));
                mb.setTime(rs.getDate(3));
                mb.setTarget(rs.getString(4));
                mb.setMessage(rs.getString(5));
                bl.add(mb);
            }
            return bl;
        } catch (Exception e) {
            e.printStackTrace();
            return null;
        }
    }


    public String getName(int id) {
        String name = null;
        try {
            pstmt = conn.prepareStatement("select name from comm_sys_user where id=?");
            pstmt.setInt(1, id);
            ResultSet rs = pstmt.executeQuery();
            while (rs.next()) {
                name = rs.getString(1);
            }
            return name;
        } catch (Exception e) {
            e.printStackTrace();
            return null;
        }
    }

    public boolean addInfo(MessBor mb) {
        try {
            pstmt = conn.prepareStatement("insert into web_201800301278_comments values(?,?,?,?,?)");
            pstmt.setInt(1, mb.getId());
            pstmt.setString(2, mb.getName());
            pstmt.setDate(3, mb.getTime());
            pstmt.setString(4, mb.getTitle());
            pstmt.setString(5, mb.getMessage());
            pstmt.executeUpdate();
            return true;
        } catch (Exception e) {
            e.printStackTrace();
            return false;
        }
    }
    public  boolean addReply(MessBor mb) {
        try {
            pstmt = conn.prepareStatement("insert into web_201800301278_reply values(?,?,?,?,?)");
            pstmt.setInt(1, mb.getId());
            pstmt.setString(2,mb.getName());
            pstmt.setDate(3,mb.getTime());
            pstmt.setString(4,mb.getTarget());
            pstmt.setString(5,mb.getMessage());
            pstmt.executeUpdate();
            return true;
        } catch (Exception e) {
            e.printStackTrace();
            return false;
        }
    }

//    public boolean insertUser(int id, String name, String password) {
//        try {
//            pstmt = conn.prepareStatement("insert into logins(id,name,password,role) values(?,?,?,?)");
//            pstmt.setInt(1, id);
//            pstmt.setString(2, name);
//            pstmt.setString(3, password);
//            pstmt.setInt(4, 0);
//            pstmt.executeUpdate();
//            return true;
//        } catch (Exception e) {
//            e.printStackTrace();
//            return false;
//        }
//    }
}