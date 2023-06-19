package Beans.StuDao;

import Beans.Entity.StuMessage;
import Beans.Util.JdbcUtil;

import java.sql.PreparedStatement;
import java.sql.SQLException;

public class StuC {
    private JdbcUtil util = new JdbcUtil();

    public int add(StuMessage StuM) {
        String sql = "insert into StuM (name,password)" + " values(?,?) ";
        // 赋值SQL语句
        PreparedStatement ps = util.createStatement(sql);
        int result = 0;
        try {
            ps.setString(1, StuM.getUserName());
            ps.setString(2, StuM.getPassword());
            result = ps.executeUpdate();
        } catch (SQLException e) {
            throw new RuntimeException(e);
        } finally {
            util.close();
        }
        return result;
    }
}
