package Beans.StuDao;

import Beans.Entity.StuMessage;
import Beans.Util.JdbcUtil;

import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;

public class StuR {
    private JdbcUtil util = new JdbcUtil();

    // 上号
    public List CompletelyQuery() {
        String sql = "select * from stuM";
        PreparedStatement ps = util.createStatement(sql);
        ResultSet rs = null;
        List stuList = new ArrayList();
        try {
            rs = ps.executeQuery();
            while (rs.next()) {
                Integer ID = rs.getInt("ID");
                int num = rs.getInt("num");
                int age = rs.getInt("age");
                int tel = rs.getInt("tel");
                double balance = rs.getDouble("balance");
                String sex = rs.getString("sex");
                String email = rs.getString("email");
                String name = rs.getString("name");
                StuMessage student = new StuMessage(ID, name, sex, email, num, age, tel, balance);
                stuList.add(student);
            }
        } catch (Exception e) {
            throw new RuntimeException(e);
        } finally {
            util.close(rs);
        }
        return stuList;
    }


}
