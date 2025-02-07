package com.jasper_demo.repository;

import com.jasper_demo.DTO.response.OrdersProduct;
import com.jasper_demo.entity.SalesOrderDetail;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;

import java.util.List;

public interface SaleOrderDetailRepository extends JpaRepository<SalesOrderDetail,Long> {

    @Query("SELECT new com.jasper_demo.DTO.response.OrdersProduct(null , p.name, sod.quantity, sod.subPrice, p.warranty, null ) " +
            "FROM SalesOrderDetail sod " +
            "JOIN SalesOrder so ON sod.salesOrderId = so.salesOrderId " +
            "JOIN Product p ON sod.productId = p.productId " +
            "JOIN ProductOption po ON p.productId = po.productId " +
            "WHERE so.salesOrderId = ?1 " +
            "GROUP BY p.name, sod.quantity, sod.subPrice, p.warranty, po.finalPrice")
    List<OrdersProduct> findOrdersProductDetailsByIdSaleOrderId(Long saleOrderId);

}
