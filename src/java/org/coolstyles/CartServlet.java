/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/JSP_Servlet/Servlet.java to edit this template
 */
package org.coolstyles;

import java.io.IOException;
import java.io.PrintWriter;
import jakarta.servlet.ServletException;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;
import java.util.ArrayList;
import java.util.List;
import java.util.logging.Logger;
import org.coolstyle.utils.URLSite;
import org.coolstyles.model.OrderDetail;
import org.coolstyles.model.OrderDetailSession;

/**
 *
 * @author PC
 */
public class CartServlet extends HttpServlet {

    Logger logger = Logger.getLogger("CartServlet");
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
        HttpSession session = request.getSession();
        List<OrderDetailSession> orderDetailSessionList = null;
        if(session.getAttribute("cart") != null){
            orderDetailSessionList = (List<OrderDetailSession>)session.getAttribute("cart");
        }else{
            orderDetailSessionList = new ArrayList<OrderDetailSession>();
        }
        
        logger.info(orderDetailSessionList.size() + ":session size");
        request.setAttribute("orderDetailSessionList", orderDetailSessionList);
        request.getRequestDispatcher("cart.jsp").forward(request, response);
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
        String action = request.getParameter("action");
        switch (action) {
            case "delete":
                int productId = Integer.parseInt(request.getParameter("productId"));
                deleteOrderDetailSession(request, productId);
                break;
            default:
                throw new AssertionError();
        }
        
        response.sendRedirect(URLSite.CART_URL);
    }
    
    private void deleteOrderDetailSession(HttpServletRequest request, int productId){
        HttpSession session = request.getSession();
        List<OrderDetailSession> orderDetailSessionList = null;
        if(session.getAttribute("cart") != null){
            orderDetailSessionList = (List<OrderDetailSession>)session.getAttribute("cart");
            for (OrderDetailSession orderDetailSession : orderDetailSessionList) {
                if(orderDetailSession.getProductId() ==  productId)
                    orderDetailSessionList.remove(orderDetailSession);
            }
        }
        request.setAttribute("orderDetailSessionList", orderDetailSessionList);
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
