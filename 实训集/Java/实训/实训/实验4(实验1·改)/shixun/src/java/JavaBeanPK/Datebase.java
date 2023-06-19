package JavaBeanPK;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;

public class Datebase {

    public static void main(String[] args) throws ClassNotFoundException, SQLException {
                    Class.forName("com.mysql.jdbc.Driver"); //Sign up to Drive it.
            String url = "jdbc:mysql://localhost:3306/db01"; // 此处可以修改要操作的数据库
            // 或者另一种写法 jdc:mysql//localhost:3306/db01?user=root&password=root
            Connection conn = DriverManager.getConnection(url, "root", "root");//get Connect obj
            if (conn != null) {
                // out.println("(ｏ ‵-′)ノ”(ノ﹏<。)！"); // Congratulations！
            }
            try {
                Statement st = conn.createStatement(); // Use it calling SQL to operate datebase
            ResultSet rs = st.executeQuery("SELECT * FROM stuff"); // 存执行结果 此处可以修改要执行的语句 大写以区分语言
            // CallableStatement cs = conn.prepareCall("{call All(*)}");
            while (rs.next()) {
                // out.println(rs.getString(1));
                // out.println(rs.getString(2));
                // out.println(rs.getString(3));
            }
            rs.close();
            st.close();
            conn.close();
            } catch (Exception e) {
                e.printStackTrace();
            }
            // 本意是写在bean里 登录页交给servlet 让servlet调用它
    }
}