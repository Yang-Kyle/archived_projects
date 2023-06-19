package org.apache.jsp;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;
import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.Statement;
import java.sql.DriverManager;

public final class Datebean_jsp extends org.apache.jasper.runtime.HttpJspBase
    implements org.apache.jasper.runtime.JspSourceDependent {

  private static final JspFactory _jspxFactory = JspFactory.getDefaultFactory();

  private static java.util.Vector _jspx_dependants;

  private org.glassfish.jsp.api.ResourceInjector _jspx_resourceInjector;

  public Object getDependants() {
    return _jspx_dependants;
  }

  public void _jspService(HttpServletRequest request, HttpServletResponse response)
        throws java.io.IOException, ServletException {

    PageContext pageContext = null;
    HttpSession session = null;
    ServletContext application = null;
    ServletConfig config = null;
    JspWriter out = null;
    Object page = this;
    JspWriter _jspx_out = null;
    PageContext _jspx_page_context = null;

    try {
      response.setContentType("text/html;charset=UTF-8");
      pageContext = _jspxFactory.getPageContext(this, request, response,
      			null, true, 8192, true);
      _jspx_page_context = pageContext;
      application = pageContext.getServletContext();
      config = pageContext.getServletConfig();
      session = pageContext.getSession();
      out = pageContext.getOut();
      _jspx_out = out;
      _jspx_resourceInjector = (org.glassfish.jsp.api.ResourceInjector) application.getAttribute("com.sun.appserv.jsp.resource.injector");

      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("<!DOCTYPE html>\n");
      out.write("<html>\n");
      out.write("    <head>\n");
      out.write("        <meta http-equiv=\"Content-Type\" content=\"text/html; charset=UTF-8\">\n");
      out.write("        <title>Stuff Page！！</title>\n");
      out.write("    </head>\n");
      out.write("    <body>\n");
      out.write("        <h1>给默默肝的人一点掌声吧~</h1>\n");
      out.write("        ");

        Class.forName("com.mysql.jdbc.Driver"); //Sign up to Drive it.
        String url = "jdbc:mysql://localhost:3306/db01"; // 此处可以修改要操作的数据库
        // 或者另一种写法 jdc:mysql//localhost:3306/db01?user=root&password=root
        Connection conn = DriverManager.getConnection(url, "root", "root");//get Connect obj
        if (conn != null) {
            System.out.println("成功！"); // Congratulations！
        }
        Statement st = conn.createStatement(); // Use it calling SQL to operate datebase
        ResultSet rs = st.executeQuery("SELECT * FROM stuff"); // 存执行结果 此处可以修改要执行的语句 大写以区分语言
        // CallableStatement cs = conn.prepareCall("{call All(*)}");
        while (rs.next()) {
            System.out.println(rs.getInt("id"));
        }
        rs.close();
        st.close();
        conn.close();
        // 本意是写在bean里 登录页交给servlet 让servlet调用它
        
      out.write("\n");
      out.write("    </body>\n");
      out.write("</html>\n");
    } catch (Throwable t) {
      if (!(t instanceof SkipPageException)){
        out = _jspx_out;
        if (out != null && out.getBufferSize() != 0)
          out.clearBuffer();
        if (_jspx_page_context != null) _jspx_page_context.handlePageException(t);
        else throw new ServletException(t);
      }
    } finally {
      _jspxFactory.releasePageContext(_jspx_page_context);
    }
  }
}
