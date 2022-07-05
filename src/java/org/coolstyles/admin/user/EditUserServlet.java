/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/JSP_Servlet/Servlet.java to edit this template
 */
package org.coolstyles.admin.user;

import java.io.IOException;
import java.io.PrintWriter;
import jakarta.servlet.ServletException;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import org.coolstyle.utils.URLSite;
import org.coolstyles.dao.Database;
import org.coolstyles.dao.DatabaseDAO;
import org.coolstyles.dao.UserDAO;
import org.coolstyles.model.User;

/**
 *
 * @author PC
 */
public class EditUserServlet extends HttpServlet {

    // <editor-fold defaultstate="collapsed" desc="HttpServlet methods. Click on the + sign on the left to edit the code.">
    /**
     * Handles the HTTP <code>GET</code> method.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        int userId = Integer.parseInt(request.getParameter("id"));        
        DatabaseDAO.init(new Database());
        UserDAO userDAO = DatabaseDAO.getInstance().getUserDAO();
        User user = userDAO.find(userId);
        
        request.setAttribute("user", user);
        request.getRequestDispatcher("./admin/users/edit.jsp").forward(request, response);
    }

    /**
     * Handles the HTTP <code>POST</code> method.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        int userId = Integer.parseInt(request.getParameter("id"));   
        String username = request.getParameter("username");
        String password = request.getParameter("password");
        
        DatabaseDAO.init(new Database());
        UserDAO userDAO = DatabaseDAO.getInstance().getUserDAO();
        User user = userDAO.find(userId);
        user.setUsername(username);
        user.setPassword(password);
        userDAO.update(user);
        
        response.sendRedirect(URLSite.ADMIN_USERS_URL);
    }

    /**
     * Returns a short description of the servlet.
     *
     * @return a String containing servlet description
     */
    @Override
    public String getServletInfo() {
        return "Short description";
    }// </editor-fold>

}
