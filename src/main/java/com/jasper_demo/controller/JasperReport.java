package com.jasper_demo.controller;

import com.jasper_demo.DTO.response.BillUser;
import com.jasper_demo.DTO.response.OrdersProduct;
import com.jasper_demo.entity.User;
import com.jasper_demo.repository.SaleOrderDetailRepository;
import com.jasper_demo.repository.SalesOrderRepository;
import com.jasper_demo.repository.UserRepository;
import com.jasper_demo.services.ReportService;
import net.sf.jasperreports.engine.JRException;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RestController;

import java.io.FileNotFoundException;
import java.io.IOException;
import java.util.List;
//@RequiredArgsConstructor
@RestController
public class JasperReport {

    @Autowired
     ReportService reportService;

    @GetMapping("export/bill/{format}/{id}")
    public String getbill(@PathVariable Long id, @PathVariable String format) throws JRException, IOException {
        return reportService.exportReportOrder(id, format);
    }

}
