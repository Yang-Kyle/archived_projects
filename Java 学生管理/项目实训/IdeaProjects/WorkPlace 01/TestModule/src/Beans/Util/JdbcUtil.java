package Beans.Util;


import javax.servlet.ServletContext;
import javax.servlet.http.HttpServletRequest;
import java.sql.*;
import java.util.Iterator;
import java.util.Map;

// JdbcUtil obj = new JdbcUtil();  obj.getCon()
// JdbcUtil obj = new JdbcUtil();  obj.createStatement();
// JdbcUtil.getCon();
public class JdbcUtil {

    final String URL = "jdbc:mysql://localhost:3306/database_of_ultra_card";
    final String USERNAME = "Kyle";
    final String PASSWORD = "8965";
    PreparedStatement ps = null;
    Connection con = null;

/*
    // 全局Connection
    public Connection getCon(HttpServletRequest request) {

        // 请求全局scope
        ServletContext application = request.getServletContext();
        // map
        Map map = (Map) application.getAttribute("key1");
        // 空闲Connection
        Iterator it = map.keySet().iterator();
        while (it.hasNext()) {
            con = (Connection) it.next();
            boolean flag = (boolean) map.get(con);
            if (flag == true) {
                map.put(con, false);
                break;
            }
        }
        return con;
    }

    public PreparedStatement createStatement(String sql, HttpServletRequest request) {

        try {
            ps = getCon(request).prepareStatement(sql);
        } catch (SQLException e) {
            e.printStackTrace();
        }
        return ps;
    }

    public void close(HttpServletRequest request) {
        if (ps != null) {
            try {
                ps.close();
            } catch (SQLException e) {
                e.printStackTrace();
            }
        }

        ServletContext application = request.getServletContext();
        Map map = (Map) application.getAttribute("key1");
        map.put(con, true);

    }
    // 全局Connection
*/

    // 将jar包中driver实现类加载到JVM中
    static {
        try {
            Class.forName("com.mysql.cj.jdbc.Driver");
            //  版本5及以下为 com.mysql.jdbc.Driver
        } catch (ClassNotFoundException e) {
            e.printStackTrace();
        }
    }

    // 封装通道并创建
    public Connection getCon() {

        try {
            con = DriverManager.getConnection(URL, USERNAME, PASSWORD);
        } catch (SQLException e) {
            e.printStackTrace();
        }
        return con;
    }

    //封装工具并创建
    public PreparedStatement createStatement(String sql) {
// ⭐ 破解迷惑：修改数据库设置的相关代码后连不上可以重启试试 尤其是ERROR 500！！
        try {
            ps = getCon().prepareStatement(sql);
        } catch (SQLException e) {
            e.printStackTrace();
        }
        return ps;
    }

    // ps与con销毁过程 insert,update,delete
    public void close() {
        if (ps != null) {
            try {
                ps.close();
            } catch (SQLException e) {
                e.printStackTrace();
            }
        }

        if (con != null) {
            try {
                con.close();
            } catch (SQLException e) {
                e.printStackTrace();
            }
        }

    }

    //select ps,con,rs
    public void close(ResultSet rs) {
        if (rs != null) {
            try {
                rs.close();
            } catch (SQLException e) {
                e.printStackTrace();
            }
        }
        close();
    }
}
