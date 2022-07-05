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
import org.coolstyles.dao.OrderDAO;
import org.coolstyles.db.MySQLDriver;
import org.coolstyles.model.Order;

/**
 *
 * @author Admin
 */
public class OrderDAOImpl implements OrderDAO{

    @Override
    public Order insert(Order order) {
        Connection conn = MySQLDriver.getInstance().getConnection();
        try {
            String sql = "INSERT INTO Orders VALUES(null,?,?,?)";            
            PreparedStatement stmt = conn.prepareStatement(sql);
            stmt.setString(1, order.getName());
            stmt.setString(2, order.getDescription());
            stmt.setString(3, order.getStatus());
            stmt.execute();
            
            //Query select order inserted.
            sql = "SELECT * FROM Orders WHERE name=? LIMIT 1";
            stmt = conn.prepareStatement(sql);
            stmt.setString(1, order.getName());
            
            ResultSet rs = stmt.executeQuery();
            while(rs.next()){
                int id = rs.getInt("id");
                String name = rs.getString("name");
                String des = rs.getString("description");
                String status = rs.getString("status");
                
                return new Order(id, name, des, status);
            }
            
        } catch (SQLException ex) {
            return null;
        }
        return null;
    }

    @Override
    public boolean update(Order order) {
        Connection conn = MySQLDriver.getInstance().getConnection();
        try {
            String sql = "UPDATE orders SET NAME=?, description=? WHERE ID=?";            
            PreparedStatement stmt = conn.prepareStatement(sql);
            stmt.setString(1, order.getName());
            stmt.setString(2, order.getDescription());
            stmt.setInt(3, order.getId());
            stmt.execute();
        } catch (SQLException ex) {
            return false;
        }
        return true;
    }

    @Override
    public boolean delete(Order order) {
        Connection conn = MySQLDriver.getInstance().getConnection();
        try {
            String sql = "DELETE FROM OrderS WHERE ID=?";            
            PreparedStatement stmt = conn.prepareStatement(sql);
            stmt.setInt(1, 1);
            stmt.execute();
        } catch (SQLException ex) {
            return false;
        }
        return true;
    }

    @Override
    public List<Order> all() { 
        List<Order> OrderList = new ArrayList<Order>();
        Connection conn = MySQLDriver.getInstance().getConnection();
        try {
            Statement stmt = conn.createStatement();
            ResultSet rs = stmt.executeQuery("SELECT * FROM orders");
            while(rs.next()){
                int id = rs.getInt("id");
                String name = rs.getString("name");
                String des = rs.getString("description");
                String status = rs.getString("status");
                
                OrderList.add(new Order(id, name, des, status));
            }
        } catch (SQLException ex) {
            Logger.getLogger(CRUDServlet.class.getName()).log(Level.SEVERE, null, ex);
        }
        return OrderList;
    }

    @Override
    public Order find(int id) {
        Connection conn = MySQLDriver.getInstance().getConnection();
        try {
            String sql = "SELECT * FROM Orders WHERE ID=? LIMIT 1";
            PreparedStatement stmt = conn.prepareStatement(sql);
            stmt.setInt(1, id);
            
            ResultSet rs = stmt.executeQuery();
            while(rs.next()){
                String name = rs.getString("name");
                String des = rs.getString("description");
                String status = rs.getString("status");
                
                return new Order(id, name, des, status);
            }
        } catch (SQLException ex) {
            return null;
        }
        return null;
    }

    @Override
    public List<Order> findByProperty(String column, Object value) {
        List<Order> OrderList = new ArrayList<Order>();
        Connection conn = MySQLDriver.getInstance().getConnection();
        try {
            String sql = "SELECT * FROM orders WHERE ?=?";
            PreparedStatement stmt = conn.prepareStatement(sql);
            stmt.setString(1, column);
            stmt.setString(2, value.toString());
            
            ResultSet rs = stmt.executeQuery();
            while(rs.next()){
                int id = rs.getInt("id");
                String name = rs.getString("name");
                String des = rs.getString("description");
                String status = rs.getString("status");
                
                OrderList.add(new Order(id, name, des, status));
            }
        } catch (SQLException ex) {
            Logger.getLogger(CRUDServlet.class.getName()).log(Level.SEVERE, null, ex);
        }
        return OrderList;
    }
    
}
