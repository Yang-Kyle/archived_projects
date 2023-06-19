package Beans.BusDao;

import Beans.Entity.BusMessage;
import Beans.Util.JdbcUtil;

import java.sql.PreparedStatement;
import java.sql.SQLException;

public class BusC {
    private JdbcUtil util = new JdbcUtil();

    public int add(BusMessage BusM) {
        String sql = "insert into BusM (name,password)" + " values(?,?) ";
        // 赋值SQL语句
        PreparedStatement ps = util.createStatement(sql);
        int result = 0;
        try {
            ps.setString(1, BusM.getUserName());
            ps.setString(2, BusM.getPassword());
            result = ps.executeUpdate();
        } catch (SQLException e) {
            throw new RuntimeException(e);
        } finally {
            util.close();
        }
        return result;
    }
}
