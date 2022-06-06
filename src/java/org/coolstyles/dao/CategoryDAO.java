/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package org.coolstyles.dao;

import java.util.List;

/**
 *
 * @author Admin
 */
public interface CategoryDAO {
    public boolean insert(CategoryDAO category);
    public boolean update(CategoryDAO category);
    public boolean delete(CategoryDAO category);
    
    public List<CategoryDAO> all();
    public CategoryDAO find(int id);
    public CategoryDAO findByProperty(String column, Object value);
}
