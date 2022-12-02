package dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import dto.category.CategoryDTO;
import server.ConnectionProvider;

public class CategoryDAO {
	List<CategoryDTO> cgDTO = new ArrayList<>();
	Connection conn;
	
	//DB에서 받아서 DTO로 저장하여 리턴하는 메소드 
	public List<CategoryDTO> selectCategoryAllList() throws SQLException {
		conn = ConnectionProvider.getConnection();
		String sql = "Select category_name from category";
		PreparedStatement pstmt = conn.prepareStatement(sql);
		ResultSet rs = pstmt.executeQuery();
		while(rs.next()) {
			CategoryDTO temp = new CategoryDTO();
			temp.setCategory_name(rs.getString("category_name"));
			cgDTO.add(temp);
		}
		rs.close();
		conn.close();
		pstmt.close();
		return cgDTO;
	}

}
