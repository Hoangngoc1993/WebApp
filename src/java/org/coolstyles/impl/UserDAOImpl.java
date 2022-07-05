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
import org.coolstyles.dao.UserDAO;
import org.coolstyles.db.MySQLDriver;
import org.coolstyles.model.User;

/**
 *
 * @author Admin
 */
public class UserDAOImpl implements UserDAO{
    Logger logger = Logger.getLogger(UserDAOImpl.class.getCanonicalName());
    //Tao Log de tim loi
    
    @Override
    public boolean insert(User user) {
        Connection conn = MySQLDriver.getInstance().getConnection();
        try {
            String sql = "INSERT INTO USER VALUES(null,?,?,?)";            
            PreparedStatement stmt = conn.prepareStatement(sql);
            stmt.setString(1, user.getUsername());
            stmt.setString(2, user.getPassword());
            stmt.setString(3, user.getRole());
            stmt.execute();
        } catch (SQLException ex) {
            logger.info(ex.toString());
            logger.log(Level.SEVERE, ex.toString());
            return false;
        }
        return true;
    }

    @Override
    public boolean update(User user) {
        Connection conn = MySQLDriver.getInstance().getConnection();
        try {
            String sql = "UPDATE USER SET USERNAME=?, PASSWORD=?, ROLE=? WHERE ID=?";            
            PreparedStatement stmt = conn.prepareStatement(sql);
            stmt.setString(1, user.getUsername());
            stmt.setString(2, user.getPassword());
            stmt.setString(3, user.getRole());
            stmt.setInt(4, user.getId());
            stmt.execute();
        } catch (SQLException ex) {
            return false;
        }
        return true;
    }

    @Override
    public boolean delete(int id) {
        Connection conn = MySQLDriver.getInstance().getConnection();
        try {
            String sql = "DELETE FROM USER WHERE ID=?";            
            PreparedStatement stmt = conn.prepareStatement(sql);
            stmt.setInt(1, id);
            stmt.execute();
        } catch (SQLException ex) {
            return false;
        }
        return true;
    }

    @Override
    public List<User> all() { 
        List<User> userList = new ArrayList<User>();
        Connection conn = MySQLDriver.getInstance().getConnection();
        try {
            Statement stmt = conn.createStatement();
            ResultSet rs = stmt.executeQuery("SELECT * FROM USER");
            while(rs.next()){
                int id = rs.getInt("id");
                String username = rs.getString("username");
                String password = rs.getString("password");
                String role = rs.getString("role");
                
                userList.add(new User(id, username, password, role));
            }
        } catch (SQLException ex) {
            Logger.getLogger(CRUDServlet.class.getName()).log(Level.SEVERE, null, ex);
        }
        return userList;
    }

    @Override
    public User find(int id) {
        Connection conn = MySQLDriver.getInstance().getConnection();
        try {
            String sql = "SELECT * FROM USER WHERE ID=? LIMIT 1";
            PreparedStatement stmt = conn.prepareStatement(sql);
            stmt.setInt(1, id);
            
            ResultSet rs = stmt.executeQuery();
            while(rs.next()){
                String username = rs.getString("username");
                String password = rs.getString("password");
                String role = rs.getString("role");
                
                return new User(id, username, password, role);
            }
        } catch (SQLException ex) {
            return null;
        }
        return null;
    }

    @Override
    public List<User> findByProperty(String column, Object value) {
        List<User> userList = new ArrayList<User>();
        Connection conn = MySQLDriver.getInstance().getConnection();
        try {
            String sql = "SELECT * FROM USERS WHERE ?=?";
            PreparedStatement stmt = conn.prepareStatement(sql);
            stmt.setString(1, column);
            stmt.setString(2, value.toString());
            
            ResultSet rs = stmt.executeQuery();
            while(rs.next()){
                int id = rs.getInt("id");
                String username = rs.getString("username");
                String password = rs.getString("password");
                String role = rs.getString("role");
                
                userList.add(new User(id, username, password, role));
            }
        } catch (SQLException ex) {
            Logger.getLogger(CRUDServlet.class.getName()).log(Level.SEVERE, null, ex);
        }
        return userList;
    }

    @Override
    public boolean register(String username, String password) {
        if(!checkUserExist(username)){
            insert(new User(0, username, password, "user"));
        }else{
            return false;
        }
        return true;
    }

    @Override
    public User login(String username, String password) {
        Connection conn = MySQLDriver.getInstance().getConnection();
        Logger log = Logger.getLogger(UserDAOImpl.class.getCanonicalName());
        try {
            String sql = "SELECT * FROM USER WHERE USERNAME=? AND PASSWORD=?";
            PreparedStatement stmt = conn.prepareStatement(sql);
            stmt.setString(1, username);
            stmt.setString(2, password);
            
            ResultSet rs = stmt.executeQuery();
            while(rs.next()){
                int id = rs.getInt("id");
                String role = rs.getString("role");
                
                return new User(id, username, password, role);
            }
        } catch (SQLException ex) {
            log.info(ex.toString());
            return null;
        }
        return null;
    }
    
    private boolean checkUserExist(String username){
        Connection conn = MySQLDriver.getInstance().getConnection();
        try {
            String sql = "SELECT * FROM USER WHERE USERNAME=?";
            PreparedStatement stmt = conn.prepareStatement(sql);
            stmt.setString(1, username);
            
            ResultSet rs = stmt.executeQuery();
            if(rs.next()) return true;
        } catch (SQLException ex) {
            return false;
        }
        return false;
    }
}
