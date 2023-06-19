package Servlets;

import Beans.StuDao.StuR;

import javax.servlet.*;
import javax.servlet.http.*;
import java.io.IOException;
import java.io.PrintWriter;
import java.util.List;

public class StuQ extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
    StuR dao = new StuR();
        PrintWriter out;
        List userList = dao.CompletelyQuery();

    }}