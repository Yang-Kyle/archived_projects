package Servlets;

import Beans.BusDao.BusC;
import Beans.Entity.BusMessage;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.io.PrintWriter;

public class BusSignUp extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        resp.setContentType("text/html;charset=utf-8"); //不要动这里🙅‍ 这样很美好
        String userName, password;
        BusC dao = new BusC();
        BusMessage BusM;
        int result = 0;
        PrintWriter out; // 输出流

        // 拿到请求信息
        userName = req.getParameter("userName");
        password = req.getParameter("password");
        // INSERT
        BusM = new BusMessage(null, userName, password);
        result = dao.add(BusM);
        // 响应写入
        out = resp.getWriter();
        if (result == 1) { // 火狐可能出不来样式 建议删了火狐（Bushi 推荐linux或者win server运行
            out.println("<center>恭喜" + req.getParameter("userName") + "商家!!<br/>(点击即可返回)<br/>" +
                    "<a href='BusIndex.jsp' style='text-decoration:none'><font style='color:green;font-size:36'>会员账号订阅成功！</font></a></center><br/>");
        } else {
            out.println("<a href='BusIndex.jsp'><font style=‘color:red;font-size:36'>你在干婶么？</font></a><br/>");
        }
        /* 这是几行用于『debug』的测试代码、 需要显示『执行结果』时请拷贝
        resp.setContentType("text/html;charset=utf-8");
        String result = "阿巴阿巴" ; // 搞到了资源文件:程序执行结果
        PrintWriter out = resp.getWriter(); // 获取Tomcat提供工具:输出流
        out.print(result); // 二进制写入『响应体』交给浏览器
        */

        /* 这是几行『debug』备用代码、 需要拿到『用户输入』时请拷贝
        Enumeration paramNames = req.getParameterNames();
        while (paramNames.hasMoreElements()) {
            String paramName = (String) paramNames.nextElement();
            String value = req.getParameter(paramName);
            System.out.println("请求参数"+paramName+":"+value);
        }
        */

//        String result = "http://www.baidu.com";
//        resp.sendRedirect(result);

//         String = req.getRequestURL().toString();
//         String = req.getRequestURI(); // 更精准的定位

    }
}

/*    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        // String value01 = req.getParameter("userName");
    }
}*/
