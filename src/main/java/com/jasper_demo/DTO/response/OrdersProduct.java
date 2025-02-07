package com.jasper_demo.DTO.response;

import java.math.BigDecimal;
public class OrdersProduct {
    private Long id;
    private String name;
    private Integer quantity;
    private BigDecimal basePrice;
    private Integer warranty;
    private BigDecimal totalPrice;

    public Long getId() {
        return id;
    }

    public void setId(Long id) {
        this.id = id;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public Integer getQuantity() {
        return quantity;
    }

    public void setQuantity(Integer quantity) {
        this.quantity = quantity;
    }

    public BigDecimal getBasePrice() {
        return basePrice;
    }

    public void setBasePrice(BigDecimal basePrice) {
        this.basePrice = basePrice;
    }

    public Integer getWarranty() {
        return warranty;
    }

    public void setWarranty(Integer warranty) {
        this.warranty = warranty;
    }

    public BigDecimal getTotalPrice() {
        return totalPrice;
    }

    public void setTotalPrice(BigDecimal totalPrice) {
        this.totalPrice = totalPrice;
    }

    public OrdersProduct(Long id, String name, Integer quantity, BigDecimal basePrice, Integer warranty, BigDecimal totalPrice) {
        this.id = id;
        this.name = name;
        this.quantity = quantity;
        this.basePrice = basePrice;
        this.warranty = warranty;
        this.totalPrice = basePrice.multiply(new BigDecimal(quantity));
    }
}