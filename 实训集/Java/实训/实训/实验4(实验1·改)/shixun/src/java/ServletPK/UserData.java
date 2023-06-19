/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */
package ServletPK;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.logging.Level;
import java.util.logging.Logger;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 *
 * @author VOCALOID
 */
public class UserData extends HttpServlet {

    /** 
     * Processes requests for both HTTP <code>GET</code> and <code>POST</code> methods.
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    protected void processRequest(HttpServletRequest req, HttpServletResponse resp)
            throws ServletException, IOException { // 抛给Exception有点不保险
        resp.setContentType("text/html;charset=UTF-8");
        PrintWriter out = resp.getWriter();
        try {
            Class.forName("com.mysql.jdbc.Driver");
            String url = "jdbc:mysql://localhost:3306/db01";
            Connection conn;

            conn = DriverManager.getConnection(url, "root", "root"); //uid upass

            Statement st = conn.createStatement();
            ResultSet rs = st.executeQuery("SELECT * FROM userdata");

            String User = req.getParameter("User");
            String Pass = req.getParameter("Pass");
            while (rs.next()) {
                if ((rs.getString(1) == null ? User == null : rs.getString(1).equals(User)) && (rs.getString(2) == null ? Pass == null : rs.getString(2).equals(Pass))) {
                    out.println("登录身份验证成功！");
                }

                /* TODO output your page here
                out.println("<html>");
                out.println("<head>");
                out.println("<title>Servlet UserData</title>");  
                out.println("</head>");
                out.println("<body>");
                out.println("<h1>Servlet UserData at " + request.getContextPath () + "</h1>");
                out.println("</body>");
                out.println("</html>");
                
                }*/
            }

        } catch (ClassNotFoundException ex) {
            Logger.getLogger(UserData.class.getName()).log(Level.SEVERE, null, ex);
        } catch (SQLException ex) {
            Logger.getLogger(UserData.class.getName()).log(Level.SEVERE, null, ex);
        } finally {
            out.close();
        }
    }

    // <editor-fold defaultstate="collapsed" desc="HttpServlet methods. Click on the + sign on the left to edit the code.">
    /** 
     * Handles the HTTP <code>GET</code> method.
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        processRequest(request, response);
    }

    /** 
     * Handles the HTTP <code>POST</code> method.
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        processRequest(request, response);
    }

    /** 
     * Returns a short description of the servlet.
     * @return a String containing servlet description
     */
    @Override
    public String getServletInfo() {
        return "Short description";
    }// </editor-fold>
}
