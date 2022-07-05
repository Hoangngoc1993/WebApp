/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package org.coolstyles.dao;
import java.util.List;
import org.coolstyles.model.Product;

/**
 *
 * @author PC
 */
public interface ProductDAO {
    public boolean insert(Product pro);
    public boolean update(Product pro);
    public boolean delete(int id);
    
    public List<Product> all();
    public Product find(int id);
    public List<Product> findByProperty(String column, Object value);
    public List<Product> findByCategoryID(int categoryId);
    public List<Product> searchByName(String key);
}
