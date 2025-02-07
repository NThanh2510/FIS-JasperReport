package com.jasper_demo.services;

import com.jasper_demo.DTO.response.BillUser;
import com.jasper_demo.DTO.response.OrdersProduct;
import com.jasper_demo.entity.User;
import com.jasper_demo.repository.SaleOrderDetailRepository;
import com.jasper_demo.repository.SalesOrderRepository;
import com.jasper_demo.repository.UserRepository;
import net.sf.jasperreports.engine.*;
import net.sf.jasperreports.engine.data.JRBeanCollectionDataSource;
import net.sf.jasperreports.engine.export.ooxml.JRXlsxExporter;
import net.sf.jasperreports.engine.util.JRLoader;
import net.sf.jasperreports.export.SimpleExporterInput;
import net.sf.jasperreports.export.SimpleOutputStreamExporterOutput;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.util.ResourceUtils;

import java.io.File;
import java.io.FileNotFoundException;
import java.util.*;

//@RequiredArgsConstructor
@Service
public class ReportService {

    @Autowired
     UserRepository userRepository;
    @Autowired
            SalesOrderRepository salesOrderRepository;
    @Autowired
    SaleOrderDetailRepository saleOrderDetailRepository;

    String path = "D:\\FPT_FIS\\Intern\\Jasper_Report\\file";


    private static Long idCounter = 1L;
    public String exportReportOrder(Long id,  String reportFormat) throws FileNotFoundException, JRException {
        //tạo JasperReport
        String jasperFilePath = "D:\\FPT_FIS\\Intern\\Jasper_Report\\Jasper_demo\\src\\main\\resources\\bill.jasper";
        JasperReport jasperReport = (JasperReport) JRLoader.loadObject(ResourceUtils.getFile(jasperFilePath));
        //lấy thông tin người dùng
        BillUser user = salesOrderRepository.findUserById(id);
        JRBeanCollectionDataSource userDataSource = new JRBeanCollectionDataSource(Collections.singletonList(user));
        //lấy danh sách sản phẩm theo hóa đơn
        List<OrdersProduct> ordersProducts = saleOrderDetailRepository.findOrdersProductDetailsByIdSaleOrderId(id);
        for (OrdersProduct dto : ordersProducts) {
            dto.setId(idCounter++);  // Tăng ID cho từng product
        }
        JRBeanCollectionDataSource tableProductOrder = new JRBeanCollectionDataSource(ordersProducts);

        Map<String, Object> paramaters = new HashMap<>();
        paramaters.put("table_product", tableProductOrder);
        //đẩy dữ liệu vào report
        JasperPrint jasperPrint = JasperFillManager.fillReport(jasperReport, paramaters, userDataSource);
//        JasperExportManager.exportReportToHtmlFile(jasperPrint, path + "\\bill.html");

        if(reportFormat.equalsIgnoreCase("html")){
            JasperExportManager.exportReportToHtmlFile(jasperPrint,path+"\\bill.html");
        }
        if(reportFormat.equalsIgnoreCase("pdf")){
            JasperExportManager.exportReportToPdfFile(jasperPrint,path+"\\bill.pdf");
        }
        if(reportFormat.equalsIgnoreCase("excel")){
            JRXlsxExporter exporter = new JRXlsxExporter();
            exporter.setExporterInput(new SimpleExporterInput(jasperPrint));
            exporter.setExporterOutput(new SimpleOutputStreamExporterOutput(path+"\\bill.xls"));
            exporter.exportReport();
        }
        return "report generated in path: "+reportFormat;
    }
}
