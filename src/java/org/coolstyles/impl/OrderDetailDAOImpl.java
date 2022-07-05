/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package org.coolstyles.impl;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;
import java.util.logging.Level;
import java.util.logging.Logger;
import org.coolstyles.CRUDServlet;
import org.coolstyles.dao.OrderDetailDAO;
import org.coolstyles.db.MySQLDriver;
import org.coolstyles.model.OrderDetail;

/**
 *
 * @author Admin
 */
public class OrderDetailDAOImpl implements OrderDetailDAO{

    @Override
    public boolean insert(OrderDetail od) {
        Connection conn = MySQLDriver.getInstance().getConnection();
        try {
            String sql = "INSERT INTO order_details VALUES(null,?,?,?)";            
            PreparedStatement stmt = conn.prepareStatement(sql);
            stmt.setInt(1, od.getOrderId());
            stmt.setInt(2, od.getProductId());
            stmt.setDouble(3, od.getAmount());
            stmt.execute();
        } catch (SQLException ex) {
            return false;
        }
        return true;
    }

    @Override
    public boolean update(OrderDetail od) {
        Connection conn = MySQLDriver.getInstance().getConnection();
        try {
            String sql = "UPDATE order_details SET orders_id=?, ProductID=?, Amount=? WHERE ID=?";            
            PreparedStatement stmt = conn.prepareStatement(sql);
            stmt.setInt(1, od.getOrderId());
            stmt.setInt(2, od.getProductId());
            stmt.setDouble(3, od.getAmount());
            stmt.setInt(4, od.getId());
            stmt.execute();
        } catch (SQLException ex) {
            return false;
        }
        return true;
    }

    @Override
    public boolean delete(OrderDetail od) {
        Connection conn = MySQLDriver.getInstance().getConnection();
        try {
            String sql = "DELETE FROM order_details WHERE ID=?";            
            PreparedStatement stmt = conn.prepareStatement(sql);
            stmt.setInt(1, 1);
            stmt.execute();
        } catch (SQLException ex) {
            return false;
        }
        return true;
    }

    @Override
    public List<OrderDetail> all() { 
        List<OrderDetail> orderDetailList = new ArrayList<OrderDetail>();
        Connection conn = MySQLDriver.getInstance().getConnection();
        try {
            Statement stmt = conn.createStatement();
            ResultSet rs = stmt.executeQuery("SELECT * FROM order_details");
            while(rs.next()){
                int id = rs.getInt("id");
                int orderID = rs.getInt("orders_id");
                int productID = rs.getInt("products_id");
                double amount = rs.getDouble("amount");
                
                orderDetailList.add(new OrderDetail(id, orderID, productID, amount));
            }
        } catch (SQLException ex) {
            Logger.getLogger(CRUDServlet.class.getName()).log(Level.SEVERE, null, ex);
        }
        return orderDetailList;
    }

    @Override
    public OrderDetail find(int id) {
        Connection conn = MySQLDriver.getInstance().getConnection();
        try {
            String sql = "SELECT * FROM order_details WHERE ID=? LIMIT 1";
            PreparedStatement stmt = conn.prepareStatement(sql);
            stmt.setInt(1, id);
            
            ResultSet rs = stmt.executeQuery();
            while(rs.next()){
                int orderID = rs.getInt("orders_id");
                int productID = rs.getInt("products_id");
                double amount = rs.getDouble("amount");
                
                return new OrderDetail(id, orderID, productID, amount);
            }
        } catch (SQLException ex) {
            return null;
        }
        return null;
    }

    @Override
    public List<OrderDetail> findByProperty(String column, Object value) {
        List<OrderDetail> OrderDetailList = new ArrayList<OrderDetail>();
        Connection conn = MySQLDriver.getInstance().getConnection();
        try {
            String sql = "SELECT * FROM order_details WHERE ?=?";
            PreparedStatement stmt = conn.prepareStatement(sql);
            stmt.setString(1, column);
            stmt.setString(2, value.toString());
            
            ResultSet rs = stmt.executeQuery();
            while(rs.next()){
                int id = rs.getInt("id");
                int orderID = rs.getInt("orders_id");
                int productID = rs.getInt("products_id");
                double amount = rs.getDouble("amount");
                
                OrderDetailList.add(new OrderDetail(id, orderID, productID, amount));
            }
        } catch (SQLException ex) {
            Logger.getLogger(CRUDServlet.class.getName()).log(Level.SEVERE, null, ex);
        }
        return OrderDetailList;
    }

    @Override
    public List<OrderDetail> findByOrderId(int orderId) {
        List<OrderDetail> orderDetailList = new ArrayList<OrderDetail>();
        Connection conn = MySQLDriver.getInstance().getConnection();
        try {
            String sql = "SELECT * FROM order_details WHERE orders_id=?";
            PreparedStatement stmt = conn.prepareStatement(sql);
            stmt.setInt(1, orderId);
            
            ResultSet rs = stmt.executeQuery();
            while(rs.next()){
                int id = rs.getInt("id");
                int orderID = rs.getInt("orders_id");
                int productID = rs.getInt("products_id");
                double amount = rs.getDouble("amount");
                
                orderDetailList.add(new OrderDetail(id, orderID, productID, amount));
            }
        } catch (SQLException ex) {
            Logger.getLogger(CRUDServlet.class.getName()).log(Level.SEVERE, null, ex);
        }
        return orderDetailList;
    }
}
