/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package org.coolstyles.model;

/**
 *
 * @author PC
 */
public class OrderDetailSession {
    private int productId;
    private String productName;
    private double amount;
    private double price;

    public OrderDetailSession(int productId, String productName, double amount, double price) {
        this.productId = productId;
        this.productName = productName;
        this.amount = amount;
        this.price = price;
    }

    public void setProductId(int productId) {
        this.productId = productId;
    }

    public void setProductName(String productName) {
        this.productName = productName;
    }

    public void setAmount(double amount) {
        this.amount = amount;
    }

    public void setPrice(double price) {
        this.price = price;
    }

    public int getProductId() {
        return productId;
    }

    public String getProductName() {
        return productName;
    }

    public double getAmount() {
        return amount;
    }

    public double getPrice() {
        return price;
    }

    
}
