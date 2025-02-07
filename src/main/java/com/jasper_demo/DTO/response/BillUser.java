package com.jasper_demo.DTO.response;

import java.util.Date;
import java.util.List;

public class BillUser {
    private Long salesOrderId;
    private String fullName;
    private String email;
    private Date orderDate;
    private String status;
//    public List<OrdersProduct> ordersProducts;

    public BillUser() {
    }

    public BillUser(Long salesOrderId, String fullName, String email, Date orderDate, String status) {
        this.salesOrderId = salesOrderId;
        this.fullName = fullName;
        this.email = email;
        this.orderDate = orderDate;
        this.status = status;
    }

    public Long getSalesOrderId() {
        return salesOrderId;
    }

    public void setSalesOrderId(Long salesOrderId) {
        this.salesOrderId = salesOrderId;
    }

    public String getFullName() {
        return fullName;
    }

    public void setFullName(String fullName) {
        this.fullName = fullName;
    }

    public String getEmail() {
        return email;
    }

    public void setEmail(String email) {
        this.email = email;
    }

    public Date getOrderDate() {
        return orderDate;
    }

    public void setOrderDate(Date orderDate) {
        this.orderDate = orderDate;
    }

    public String getStatus() {
        return status;
    }

    public void setStatus(String status) {
        this.status = status;
    }
}