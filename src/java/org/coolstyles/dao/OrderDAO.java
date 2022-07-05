/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package org.coolstyles.dao;

import java.util.List;
import org.coolstyles.model.Order;

/**
 *
 * @author Admin
 */
public interface OrderDAO {
    public Order insert(Order order);
    public boolean update(Order order);
    public boolean delete(Order order);
    
    public List<Order> all();
    public Order find(int id);
    public List<Order> findByProperty(String column, Object value);
    
}

