/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/JSP_Servlet/Servlet.java to edit this template
 */
package org.coolstyles;

import java.io.IOException;
import jakarta.servlet.ServletException;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;
import java.util.ArrayList;
import java.util.List;
import java.util.logging.Logger;
import org.coolstyle.utils.URLSite;
import org.coolstyles.dao.Database;
import org.coolstyles.dao.DatabaseDAO;
import org.coolstyles.dao.ProductDAO;
import org.coolstyles.model.OrderDetailSession;
import org.coolstyles.model.Product;

/**
 *
 * @author PC
 */
public class OrderServlet extends HttpServlet {

    Logger logger = Logger.getLogger("Order Servlet");
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
        int productId = Integer.parseInt(request.getParameter("productId"));
        String productName = request.getParameter("productName");
        int amount = Integer.parseInt(request.getParameter("amount"));
        double price = Double.parseDouble(request.getParameter("price"));
        
        OrderDetailSession orderDetailSession = new OrderDetailSession(productId, productName, amount, price);
        HttpSession session = request.getSession();
        List<OrderDetailSession> cart = null;
        boolean isProductExist = false;
        
        if(session.getAttribute("cart") != null){
            cart = (List<OrderDetailSession>)session.getAttribute("cart");
            for (OrderDetailSession od : cart) {
                if(od.getProductId() == productId){
                    od.setAmount(od.getAmount() + amount);
                    isProductExist = true;
                    break;
                }
            }
        }else{
            cart =  new ArrayList<OrderDetailSession>();
        }
        
        if(!isProductExist){
            cart.add(orderDetailSession);
        }
        
        session.setAttribute("cart", cart);
        response.sendRedirect(URLSite.CART_URL);
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
