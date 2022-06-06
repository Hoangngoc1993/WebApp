/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package org.coolstyles.dao;

import org.coolstyles.impl.CategoryDAOImpl;
import org.coolstyles.impl.UserDAOImpl;

/**
 *
 * @author Admin
 */
public class Database extends DatabaseDAO {

    @Override
    public UserDAO getUserDAO() {
        return new UserDAOImpl();
    }

    @Override
    public CategoryDAO getCategoryDAO() {
        return new CategoryDAOImpl();
    }
    
}
