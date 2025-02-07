package com.jasper_demo.repository;

import com.jasper_demo.DTO.response.BillUser;
import com.jasper_demo.DTO.response.OrdersProduct;
import com.jasper_demo.entity.SalesOrder;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;

import java.util.List;

public interface SalesOrderRepository extends JpaRepository<SalesOrder, Integer>{
    @Query("SELECT new com.jasper_demo.DTO.response.BillUser(s.salesOrderId, CONCAT(u.firstName, ' ', u.lastName), u.email, s.orderDate, s.status) " +
            "FROM SalesOrder s JOIN User u ON s.kcid = u.kcid " +
            "WHERE s.salesOrderId = ?1")
    BillUser findUserById(Long id);


}
