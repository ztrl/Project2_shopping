package dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import org.json.JSONException;

import dto.user.UserDTO;
import util.Pager;

public class UserDAO {
	
	
	//로그인
	public UserDTO selectUser(UserDTO userDto, Connection conn) throws SQLException {
		String sql = "";
		sql += "SELECT USERS_ID, USERS_PASSWORD, USERS_NAME, USERS_LEVEL, USERS_POINT, USERS_ADDRESS ";
		sql += "FROM USERS ";
		sql += "WHERE USERS_ID = ? AND USERS_PASSWORD = ?";
		
		PreparedStatement pstmt = conn.prepareStatement(sql);
		
		
		pstmt.setString(1, userDto.getUser_id());
		pstmt.setString(2, userDto.getUser_password());
		
		ResultSet rs = pstmt.executeQuery();
		
		
		UserDTO userDTO = new UserDTO();
		
		if(rs.next()) {
			userDTO.setUser_id(rs.getString(1));
			userDTO.setUser_password(rs.getString(2));
			userDTO.setUser_level(rs.getInt(4));
			userDTO.setUser_point(rs.getInt(5));
		} else {
			userDTO = null;
		}
		
		rs.close();
		pstmt.close();
		
		return userDTO;
	}
	
	//회원가입
	public int insertUser(UserDTO receivedDTO, Connection conn) throws SQLException {
		int result = 0;

			String sql1 = "";
			sql1 += "INSERT INTO USERS ";
			sql1 += "VALUES (?, ?, ?, ?, ?, 1, ?, ?, 0)";
		
			conn.setAutoCommit(false);
			
			PreparedStatement pstmt1 = conn.prepareStatement(sql1);
			pstmt1.setString(1, receivedDTO.getUser_id());
			pstmt1.setString(2, receivedDTO.getUser_password());
			pstmt1.setString(3, receivedDTO.getUser_email());
			pstmt1.setString(4, receivedDTO.getUser_address());
			pstmt1.setString(5, receivedDTO.getUser_phone());
			pstmt1.setString(6, receivedDTO.getUser_name());
			pstmt1.setString(7, receivedDTO.getUser_birthday());
			
			result += pstmt1.executeUpdate();
			pstmt1.close();
			
			String sql2
			= "INSERT INTO USER_CART "
			+ "VALUES (0, ?)";
			
			PreparedStatement pstmt2 = conn.prepareStatement(sql2);
			pstmt2.setString(1, receivedDTO.getUser_id());
		
			result += pstmt2.executeUpdate();
	
			pstmt2.close();
	
		return result;
	}
	//관리자 페이지 전체 리스트
		public int getTotalRows(Connection conn) throws SQLException {
			String sql = "";
				sql += "SELECT COUNT(*) as total ";
				sql += "FROM USERS ";
			PreparedStatement pstmt = conn.prepareStatement(sql);
			ResultSet rs = pstmt.executeQuery();
			
			rs.next();
			int result = rs.getInt(1);
			rs.close();
			pstmt.close();
			
			return result;
		}
	//관리자 유저 리스트 받기
	public List<UserDTO> getUserList(Pager pager, Connection conn) throws SQLException {
		
		List<UserDTO> result = new ArrayList<>();
		String sql = "";
			sql+= "select rnum, users_id, users_password, users_email, users_address, users_phone, users_level, users_name , users_birthday, users_point ";
			sql+= "from (select rownum as rnum, users_id, users_password, users_email, users_address, users_phone, users_level, users_name , users_birthday, users_point ";
			sql+= "from (select  users_id, users_password, users_email, users_address, users_phone, users_level, users_name, users_birthday, users_point ";
			sql+= "from users ";
			sql+= "order by users_level desc) ";
			sql+= "where rownum <= ? ) ";
			sql+= "where rnum >= ? ";
			
		PreparedStatement pstmt = conn.prepareStatement(sql);
		pstmt.setInt(1, pager.getPageNo()*pager.getRowsPerPage());
		pstmt.setInt(2, (pager.getPageNo()-1)*pager.getRowsPerPage()+1);
			
		ResultSet rs = pstmt.executeQuery();
		while(rs.next()) {
			UserDTO userDTO = new UserDTO();
			userDTO.setUser_id(rs.getString(2));
			userDTO.setUser_password(rs.getString(3));
			userDTO.setUser_email(rs.getString(4));
			userDTO.setUser_address(rs.getString(5));
			userDTO.setUser_phone(rs.getString(6));
			userDTO.setUser_level(rs.getInt(7));
			userDTO.setUser_name(rs.getString(8));
			//birthday에 임의로 rownum 집어넣음
			userDTO.setUser_birthday(rs.getString(1));
			
			result.add(userDTO);
		}
		rs.close();
		pstmt.close();
		return result;
	}
	
	//관리자 유저 리스트 삭제
	public int deleteUser(String id, Connection conn) throws SQLException {
		String SQL = "DELETE FROM USERS WHERE USERS_ID = ?";
		
		PreparedStatement pstmt = conn.prepareStatement(SQL);
		pstmt.setString(1, id);
		int result = pstmt.executeUpdate();
		pstmt.close();
		
		return result;
	}
	
	
	//유저정보 조회하기
	public UserDTO selectUserInfo(UserDTO userDTO, Connection conn) throws JSONException, SQLException {
		String sql = "";
		sql += "SELECT * ";
		sql += "FROM USERS ";
		sql += "WHERE USERS_ID = ?";
		
		PreparedStatement pstmt = conn.prepareStatement(sql);
		pstmt.setString(1, userDTO.getUser_id());
		ResultSet rs = pstmt.executeQuery();
		
		UserDTO result = new UserDTO();
		
		if(rs.next()) {
			result.setUser_id(rs.getString("USERS_ID"));
			result.setUser_email(rs.getString("USERS_EMAIL"));
			result.setUser_address(rs.getString("USERS_ADDRESS"));
			result.setUser_phone(rs.getString("USERS_PHONE"));
			result.setUser_level(rs.getInt("USERS_LEVEL"));
			result.setUser_name(rs.getString("USERS_NAME"));
			result.setUser_birthday(rs.getString("USERS_BIRTHDAY"));
			result.setUser_point(rs.getInt("USERS_POINT"));
		}
		
		rs.close();
		pstmt.close();
		conn.close();
		return result;
	}
	
	
	//유저정보 수정하기.
	public void updateUser(UserDTO receivedDTO, Connection conn) throws SQLException {
		String sql = "update users set users_password = ?, ";
				sql += "users_email = ? , users_address = ?, ";
				sql += "users_phone = ? , users_name = ? , users_birthday = ? ";
				sql += "where users_id = ? ";

		PreparedStatement pstmt = conn.prepareStatement(sql);
		pstmt.setString(1, receivedDTO.getUser_password());
		pstmt.setString(2, receivedDTO.getUser_email());
		pstmt.setString(3, receivedDTO.getUser_address());
		pstmt.setString(4, receivedDTO.getUser_phone());
		pstmt.setString(5, receivedDTO.getUser_name());
		pstmt.setString(6, receivedDTO.getUser_birthday());
		pstmt.setString(7, receivedDTO.getUser_id());
		
		pstmt.executeUpdate();
		
		pstmt.close();
	}
	
	//비밀번호 찾기
	public String findPassword(UserDTO receivedDTO, Connection conn) throws SQLException {
		String sql = "select users_password ";
		sql += "from users ";
		sql += "where users_id = ? and users_phone = ? ";
		
		String result = "";
		PreparedStatement pstmt = conn.prepareStatement(sql);
		pstmt.setString(1, receivedDTO.getUser_id());
		pstmt.setString(2, receivedDTO.getUser_phone());
		
		ResultSet rs = pstmt.executeQuery();
		if(rs.next()) {
			result = rs.getString("users_password");
		}
		pstmt.close();
		
		return result;
	}
	
	public String findId(UserDTO receivedDTO, Connection conn) throws SQLException {
		String sql = "select users_id ";
		sql += "from users ";
		sql += "where users_name = ? and users_phone = ? ";
		
		String result = "";
		PreparedStatement pstmt = conn.prepareStatement(sql);
		pstmt.setString(1, receivedDTO.getUser_name());
		pstmt.setString(2, receivedDTO.getUser_phone());
		
		ResultSet rs = pstmt.executeQuery();
		if(rs.next()) {
			result = rs.getString("users_id");
		}
		pstmt.close();
		
		return result;
	}
	
	

}
