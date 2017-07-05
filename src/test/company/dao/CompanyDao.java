package test.company.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import acorn.util.DbcpBean;
import test.company.dto.CompanyDto;

public class CompanyDao {
	private static CompanyDao dao;
	private CompanyDao(){};
	public static CompanyDao getInstance(){
		if(dao==null){
			dao=new CompanyDao();
		}
		return dao;
	}

//회사 정보를 저장하는 메소드
	public boolean insert(CompanyDto dto){
		Connection conn = null;
		PreparedStatement pstmt = null;
		int flag = 0;
		try {
			conn = new DbcpBean().getConn();
			String sql = "INSERT INTO company(companyNo,companyName,companyCeoName,companyCeoPhone,workArea,workNo) values(?,?,?,?,?,?)";
			pstmt = conn.prepareStatement(sql);
			pstmt.setInt(1, dto.getCompanyNo());
			pstmt.setString(2, dto.getCompanyName());
			pstmt.setString(3, dto.getCompanyCeoname());
			pstmt.setString(4, dto.getCompanyCeoPhone());
			pstmt.setString(5, dto.getWorkArea());
			pstmt.setInt(6, dto.getWorkNo());
			flag = pstmt.executeUpdate();
		} catch (SQLException se) {
			se.printStackTrace();
		} finally {
			try {
				if (pstmt != null)
					pstmt.close();
				if (conn != null)
					conn.close();
			} catch (Exception e) {
			}
		}
		if (flag > 0) {
			return true;
		} else {
			return false;
		}
	}//insert
	//회사 정보를 불러오는 메소드
	public CompanyDto getData(String companyNo){
		Connection conn = null;
		PreparedStatement pstmt = null;
		ResultSet rs = null;
		CompanyDto dto=null;
		try {
			conn = new DbcpBean().getConn();
			String sql = "select companyName, companyCeoName, companyCeoPhone,"
					+ " workArea, workNo from company where companyNo=?";
			pstmt = conn.prepareStatement(sql);
			pstmt.setString(1, companyNo);
			rs = pstmt.executeQuery();
			while (rs.next()) {
				dto=new CompanyDto();
				dto.setCompanyName(rs.getString("companyName"));
				dto.setCompanyCeoname(rs.getString("companyCeoname"));
				dto.setCompanyCeoPhone(rs.getString("companyCeoPhone"));
				dto.setWorkArea(rs.getString("workArea"));
				dto.setWorkNo(rs.getInt("workNo"));
			}
		} catch (SQLException se) {
			se.printStackTrace();
		} finally {
			try {
				if (rs != null)
					rs.close();
				if (pstmt != null)
					pstmt.close();
				if (conn != null)
					conn.close();
			} catch (Exception e) {
			}
		}
		return dto;
	}//getData()
	//회사 정보를 삭제하는 메소드
	public boolean delete(String companyNo){
		Connection conn = null;
		PreparedStatement pstmt = null;
		int flag = 0;
		try {
			conn = new DbcpBean().getConn();
			String sql = "delete from company where companyNo=?";
			pstmt = conn.prepareStatement(sql);
			pstmt.setString(1,companyNo);
			flag = pstmt.executeUpdate();
		} catch (SQLException se) {
			se.printStackTrace();
		} finally {
			try {
				if (pstmt != null)
					pstmt.close();
				if (conn != null)
					conn.close();
			} catch (Exception e) {
			}
		}
		if (flag > 0) {
			return true;
		} else {
			return false;
		}
		
	}//delete()
	
	//회사 정보를 수정하는 메소드
	public boolean update(CompanyDto dto){
	Connection conn = null;
	PreparedStatement pstmt = null;
	int flag = 0;
	try {
		conn = new DbcpBean().getConn();
		String sql = "update company set ";
		pstmt = conn.prepareStatement(sql);

		flag = pstmt.executeUpdate();

	} catch (SQLException se) {
		se.printStackTrace();
	} finally {
		try {
			if (pstmt != null)
				pstmt.close();
			if (conn != null)
				conn.close();
		} catch (Exception e) {
		}
	}
	if (flag > 0) {
		return true;
	} else {
		return false;
	}	
	}	
	
	//회사목록을 리턴해주는 메소드
	public List<CompanyDto> getList(){
		Connection conn = null;
		PreparedStatement pstmt = null;
		ResultSet rs = null;
		List<CompanyDto> list=new ArrayList<CompanyDto>();
		try {
			conn = new DbcpBean().getConn();
			String sql = "select companyNo,companyName,companyCeoName,companyCeoPhone,workArea,workNo from company order by companyNo";
			pstmt = conn.prepareStatement(sql);
			rs = pstmt.executeQuery();
			while (rs.next()) {
				int companyno = rs.getInt("companyNo");
				String companyname = rs.getString("companyName");
				String companyceoname = rs.getString("companyCeoName");
				String companyceophone = rs.getString("companyCeoPhone");
				String workarea = rs.getString("workArea");
				int workno = rs.getInt("workNo");
				//글정보를 dto에 담아서
				CompanyDto dto=new CompanyDto();
				dto.setCompanyNo(companyno);
				dto.setCompanyName(companyname);
				dto.setCompanyCeoname(companyceoname);
				dto.setCompanyCeoPhone(companyceophone);
				dto.setWorkArea(workarea);
				dto.setWorkNo(workno);
				//list어레이에 객체를 저장한다.
				list.add(dto);			
			}
		} catch (SQLException se) {
			se.printStackTrace();
		} finally {
			try {
				if (rs != null)
					rs.close();
				if (pstmt != null)
					pstmt.close();
				if (conn != null)
					conn.close();
			} catch (Exception e) {}
		}
		//목록 리턴
		return list;
	}
}








