package service.my;

import java.sql.Connection;
import java.util.List;

import javax.servlet.ServletContext;
import javax.sql.DataSource;

import dao.ProductDAO;
import dto.product.ProductDTO;
import util.Pager;

public class UpdateProductListService {
	private ServletContext application;
	private DataSource ds;
	private ProductDAO productDAO;
	public UpdateProductListService(ServletContext application) {
		this.application = application;
		productDAO = (ProductDAO)application.getAttribute("productDAO");
		ds = (DataSource) application.getAttribute("dataSource");
	}

	public int updatePageList(ProductDTO product) {
		int result = 0;
		Connection conn = null;
		
		try {
			conn = ds.getConnection();
			result = productDAO.updatePageList(product, conn);
		}
		catch (Exception e) {
			e.printStackTrace();
		}
		finally {
			try {conn.close();} catch (Exception e) {}
		}
		
		return result;
	}
}