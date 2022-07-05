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
import org.coolstyles.dao.ProductDAO;
import org.coolstyles.db.MySQLDriver;
import org.coolstyles.model.Product;

/**
 *
 * @author Admin
 */
public class ProductDAOImpl implements ProductDAO{

    @Override
    public boolean insert(Product product) {
        Connection conn = MySQLDriver.getInstance().getConnection();
        try {
            String sql = "INSERT INTO products VALUES(null,?,?,?,?,?,?)";            
            PreparedStatement stmt = conn.prepareStatement(sql);
            stmt.setString(1, product.getName());
            stmt.setString(2, product.getDescription());
            stmt.setString(3, product.getImage());
            stmt.setDouble(4, product.getPrice());
            stmt.setInt(5, product.getCategoryId());
            stmt.setDouble(6, product.getOldPrice());
            stmt.execute();
        } catch (SQLException ex) {
            return false;
        }
        return true;
    }

    @Override
    public boolean update(Product product) {
        Connection conn = MySQLDriver.getInstance().getConnection();
        try {
            String sql = "UPDATE products SET name=?, description=?, price=?, categories_id=? WHERE ID=?";            
            PreparedStatement stmt = conn.prepareStatement(sql);
            stmt.setString(1, product.getName());
            stmt.setString(2, product.getDescription());
            stmt.setDouble(3, product.getPrice());
            stmt.setDouble(4, product.getCategoryId());
            stmt.setInt(5, product.getId());
            stmt.execute();
        } catch (SQLException ex) {
            Logger.getLogger("productDAO").info(ex.toString());
            return false;
        }
        return true;
    }

    @Override
    public boolean delete(int id) {
        Connection conn = MySQLDriver.getInstance().getConnection();
        try {
            String sql = "DELETE FROM Products WHERE ID=?";            
            PreparedStatement stmt = conn.prepareStatement(sql);
            stmt.setInt(1, id);
            stmt.execute();
        } catch (SQLException ex) {
            return false;
        }
        return true;
    }

    @Override
    public List<Product> all() { 
        List<Product> productList = new ArrayList<Product>();
        Connection conn = MySQLDriver.getInstance().getConnection();
        try {
            Statement stmt = conn.createStatement();
            ResultSet rs = stmt.executeQuery("SELECT * FROM products");
            while(rs.next()){
                int id = rs.getInt("id");
                String name = rs.getString("name");
                String description = rs.getString("description");
                String image = rs.getString("image");
                double price = rs.getDouble("price");
                int category_id = rs.getInt("categories_id");
                double oldPrice = rs.getDouble("oldPrice");
                
                productList.add(new Product(id, name, description, image, price, category_id, oldPrice));
            }
        } catch (SQLException ex) {
            Logger.getLogger(CRUDServlet.class.getName()).log(Level.SEVERE, null, ex);
        }
        return productList;
    }

    @Override
    public Product find(int id) {
        Connection conn = MySQLDriver.getInstance().getConnection();
        try {
            String sql = "SELECT * FROM Products WHERE ID=? LIMIT 1";
            PreparedStatement stmt = conn.prepareStatement(sql);
            stmt.setInt(1, id);
            
            ResultSet rs = stmt.executeQuery();
            while(rs.next()){
                String name = rs.getString("name");
                String description = rs.getString("description");
                String image = rs.getString("image");
                double price = rs.getDouble("price");
                int categories_id = rs.getInt("categories_id");
                double oldPrice = rs.getDouble("oldPrice");
                
                return new Product(id, name, description, image, price, categories_id, oldPrice);
            }
        } catch (SQLException ex) {
            return null;
        }
        return null;
    }

    @Override
    public List<Product> findByProperty(String column, Object value) {
        List<Product> ProductList = new ArrayList<Product>();
        Connection conn = MySQLDriver.getInstance().getConnection();
        try {
            String sql = "SELECT * FROM ProductS WHERE ?=?";
            PreparedStatement stmt = conn.prepareStatement(sql);
            stmt.setString(1, column);
            stmt.setString(2, value.toString());
            
            ResultSet rs = stmt.executeQuery();
            while(rs.next()){
                int id = rs.getInt("id");
                String name = rs.getString("name");
                String description = rs.getString("description");
                String image = rs.getString("image");
                double price = rs.getDouble("price");
                int category_id = rs.getInt("category_id");
                double oldPrice = rs.getDouble("oldPrice");
                
                ProductList.add(new Product(id, name, description, image, price, category_id, oldPrice));
            }
        } catch (SQLException ex) {
            Logger.getLogger(CRUDServlet.class.getName()).log(Level.SEVERE, null, ex);
        }
        return ProductList;
    }

    @Override
    public List<Product> findByCategoryID(int categoryId) {
       List<Product> ProductList = new ArrayList<Product>();
        Connection conn = MySQLDriver.getInstance().getConnection();
        try {
            String sql = "SELECT * FROM Products WHERE categories_id=?";
            PreparedStatement stmt = conn.prepareStatement(sql);
            stmt.setInt(1, categoryId);
            
            ResultSet rs = stmt.executeQuery();
            while(rs.next()){
                int id = rs.getInt("id");
                String name = rs.getString("name");
                String description = rs.getString("description");
                String image = rs.getString("image");
                double price = rs.getDouble("price");
                int categories_id = rs.getInt("categories_id");
                double oldPrice = rs.getDouble("oldPrice");
                
                ProductList.add(new Product(id, name, description, image, price, categories_id, oldPrice));
            }
        } catch (SQLException ex) {
            Logger.getLogger(CRUDServlet.class.getName()).log(Level.SEVERE, null, ex);
        }
        return ProductList;
    }

    @Override
    public List<Product> searchByName(String key) {
        List<Product> ProductList = new ArrayList<Product>();
        Connection conn = MySQLDriver.getInstance().getConnection();
        try {
            String sql = "SELECT * FROM Products WHERE name like ?";
            PreparedStatement stmt = conn.prepareStatement(sql);
            stmt.setString(1, "%" + key + "%");
            
            ResultSet rs = stmt.executeQuery();
            while(rs.next()){
                int id = rs.getInt("id");
                String name = rs.getString("name");
                String description = rs.getString("description");
                String image = rs.getString("image");
                double price = rs.getDouble("price");
                int categories_id = rs.getInt("categories_id");
                double oldPrice = rs.getDouble("oldPrice");
                
                ProductList.add(new Product(id, name, description, image, price, categories_id, oldPrice));
            }
        } catch (SQLException ex) {
            Logger.getLogger(CRUDServlet.class.getName()).log(Level.SEVERE, null, ex);
        }
        return ProductList;
    }
    
}
