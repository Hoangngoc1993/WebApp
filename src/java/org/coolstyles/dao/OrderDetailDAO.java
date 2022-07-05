/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package org.coolstyles.dao;

import java.util.List;
import org.coolstyles.model.OrderDetail;

/**
 *
 * @author Admin
 */
public interface OrderDetailDAO {
    public boolean insert(OrderDetail od);
    public boolean update(OrderDetail od);
    public boolean delete(OrderDetail od);
    
    public List<OrderDetail> all();
    public OrderDetail find(int id);
    public List<OrderDetail> findByProperty(String column, Object value);
    public List<OrderDetail> findByOrderId(int orderId);
}

