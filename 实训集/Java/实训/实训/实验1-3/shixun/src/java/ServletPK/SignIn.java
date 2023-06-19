package ServletPK;

import java.io.IOException;
import java.io.PrintWriter;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletContext;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

public class SignIn extends HttpServlet {

    /** 
     * Processes requests for both HTTP <code>GET</code> and <code>POST</code> methods.
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    protected void processRequest(HttpServletRequest req, HttpServletResponse resp)
            throws ServletException, IOException {
        resp.setContentType("text/html;charset=UTF-8");
        PrintWriter out = resp.getWriter();
        ServletContext sc = getServletContext();
        try {
            String User = req.getParameter("User");
            String Pass = req.getParameter("Pass");
            if ("".equals(User)) {
                out.println("用户名不能为空！");
            }
            if ("".equals(Pass)) {
                out.println("密码不能为空！");
            } else {
                if (!"Admin".equals(User) || !"root".equals(Pass)) {
                    RequestDispatcher rd = sc.getRequestDispatcher("/Retry.jsp");
                    rd.include(req, resp);
                    // 不能运行的写法：
                    // RequestDispatcher rd=req.getRequestDispatcher("/Retry.jsp");
                    // rd.include(req,resp);
                }
                if ("Admin".equals(User) && "root".equals(Pass)) {
                    RequestDispatcher rd = sc.getRequestDispatcher("/Welcome.jsp");
                    rd.include(req, resp);
                    out.println("<html><head><title>Servlet SignIn</title></head><body><h1>登录成功!" + "</h1></body></html>");
                }
            }
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
