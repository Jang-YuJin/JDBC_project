package project.shopService;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import javax.naming.Context;
import javax.naming.InitialContext;
import javax.naming.NamingException;
import javax.sql.DataSource;

import project.shopModel.MemberDTO;
import project.shopModel.ProductDTO;

public class ShopDAO {
	private PreparedStatement pstmt;
	private Connection con;
	private DataSource dataFactory;
	
	public ShopDAO() {
		Context ctx;
		try {
			ctx = new InitialContext();
			Context envContext = (Context)ctx.lookup("java:comp/env");
			dataFactory = (DataSource)envContext.lookup("jdbc/banana");
		} catch (NamingException e) {
			e.printStackTrace();
		}
	}
	
	public List<ProductDTO> getProductList(){ //tb_product의 모든 레코드를 list에 저장
		List<ProductDTO> list = new ArrayList<>();
		
		try {
			con = dataFactory.getConnection();
			
			String query = "select * from tb_product_p";
			pstmt = con.prepareStatement(query);
			ResultSet result = pstmt.executeQuery();
			while(result.next()) {
				ProductDTO dto = new ProductDTO();
				dto.setCode(result.getString("code"));
				dto.setName(result.getString("name"));
				dto.setPrice(result.getInt("price"));
				dto.setRepresentative(result.getString("representative"));
				dto.setDetails(result.getString("details"));
				list.add(dto);
			}
			if(result != null) {
				result.close();
			}
			if(pstmt != null) {
				pstmt.close();
			}
			if(con != null) {
				con.close();
			}
		} catch (SQLException e) {
			e.printStackTrace();
		}
		
		return list;
	}
	
	public int setMemberInfo(MemberDTO dto) {
		int result = -10;
		try {
			con = dataFactory.getConnection();
			String query = "insert into tb_member_p(id, password, name, tel, address, birth)"
					+ " values (?, ?, ?, ?, ?, ?)";
			pstmt = con.prepareStatement(query);
			pstmt.setString(1, dto.getId());
			pstmt.setString(2, dto.getPassword());
			pstmt.setString(3, dto.getName());
			pstmt.setString(4, dto.getTel());
			pstmt.setString(5, dto.getAddress());
			pstmt.setDate(6, dto.getBirth());
			result = pstmt.executeUpdate();
			if(pstmt != null) {
				pstmt.close();
			}
			if(con != null) {
				con.close();
			}
			System.out.println(result);
		} catch (SQLException e) {
			e.printStackTrace();
		}
		return result;
	}
}
