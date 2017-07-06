package acorn.member;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import acorn.util.DbcpBean;

public class MemberDao {
	private static MemberDao dao;
	
	private MemberDao(){ }
	public static MemberDao getInstance(){
		if(dao==null){
			dao=new MemberDao();
		}
		return dao;
	}
	
	public boolean insert(MemberDto dto){
		Connection conn = null;
		PreparedStatement pstmt = null;
		int flag = 0;
		String sql = "INSERT INTO member "
			+ "(memberId, memberPwd, memberName, companyNo, memberLevel, "
			+ " memberEmail, memberPhone, workArea) "
			+ "VALUES(?, ?, ?, ?, ?, ?, ?, ?, SYSDATE)";
		
		try {
			conn = new DbcpBean().getConn();
			pstmt = conn.prepareStatement(sql);
			pstmt.setString(1, dto.getMemberId());
			pstmt.setString(2, dto.getMemberPwd());
			pstmt.setString(3, dto.getMemberName());
			pstmt.setInt(4, dto.getCompanyNo());
			pstmt.setString(5, dto.getMemberLevel());
			pstmt.setString(6, dto.getMemberEmail());
			pstmt.setString(7, dto.getMemberPhone());
			pstmt.setString(8, dto.getWorkArea());

			flag = pstmt.executeUpdate();
		} catch (SQLException se) {
			se.printStackTrace();
		} finally {
			try {
				if (pstmt != null) pstmt.close();
				if (conn != null) conn.close();
			} catch (Exception e) { }
		}
		
		if (flag > 0) {
			return true;
		} else {
			return false;
		}
	}
	
	public List<MemberDto> getList(){		
		Connection conn = null;
		PreparedStatement pstmt = null;
		ResultSet rs = null;
		List<MemberDto> list = new ArrayList<>();
		String sql = "SELECT * FROM member ";

		try {
			conn = new DbcpBean().getConn();
			pstmt = conn.prepareStatement(sql);

			rs = pstmt.executeQuery();
			
			while (rs.next()) {
				String memberId = rs.getString("memberId");
				String memberName = rs.getString("memberName");
				String memberPwd = rs.getString("memberPwd");
				int companyNo = rs.getInt("companyNo");
				String memberLevel = rs.getString("memberLevel");
				String memberEmail = rs.getString("memberEmail");
				String memberPhone = rs.getString("memberPhone");
				String workArea = rs.getString("workArea");
				String regDate = rs.getString("regDate");
				
				MemberDto dto = new MemberDto();
				
				dto.setMemberId(memberId);
				dto.setMemberName(memberName);
				dto.setMemberPwd(memberPwd);
				dto.setCompanyNo(companyNo);
				dto.setMemberLevel(memberLevel);
				dto.setMemberEmail(memberEmail);
				dto.setMemberPhone(memberPhone);
				dto.setWorkArea(workArea);
				dto.setRegDate(regDate);

				list.add(dto);
			}
		} catch (SQLException se) {
			se.printStackTrace();
		} finally {
			try {
				if (rs != null) rs.close();
				if (pstmt != null) pstmt.close();
				if (conn != null) conn.close();
			} catch (Exception e) { }
		}

		return list;
	}
	
	public MemberDto getData(String memberId){
		Connection conn = null;
		PreparedStatement pstmt = null;
		ResultSet rs = null;
		MemberDto dto = new MemberDto();
		String sql="select * from member where memberId=? ";

		try {
			conn = new DbcpBean().getConn();
			pstmt = conn.prepareStatement(sql);
			pstmt.setString(1, memberId);

			rs = pstmt.executeQuery();
			if (rs.next()) {

			}
		} catch (SQLException se) {
			se.printStackTrace();
		} finally {
			try {
				if (rs != null) rs.close();
				if (pstmt != null) pstmt.close();
				if (conn != null) conn.close();
			} catch (Exception e) { }
		}

		return dto;
	}
	
	public boolean update(MemberDto dto){
		Connection conn = null;
		PreparedStatement pstmt = null;
		int flag = 0;
		String sql = "UPDATE member "
				    +"   SET memberPwd=?, memberName=?, companyNo=?, memberLevel=?, "
				    +"		 memberEmail=?, memberPhone=?, workArea=? "
				    +" WHERE wmemberId=? ";
		
		try {
			conn = new DbcpBean().getConn();
			pstmt = conn.prepareStatement(sql);

			pstmt.setString(1, dto.getMemberPwd());
			pstmt.setString(2, dto.getMemberName());
			pstmt.setInt(3, dto.getCompanyNo());
			pstmt.setString(4, dto.getMemberLevel());
			pstmt.setString(5, dto.getMemberEmail());
			pstmt.setString(6, dto.getMemberPhone());
			pstmt.setString(7, dto.getWorkArea());
			pstmt.setString(8, dto.getMemberId());

			flag = pstmt.executeUpdate();
		} catch (SQLException se) {
			se.printStackTrace();
		} finally {
			try {
				if (pstmt != null) pstmt.close();
				if (conn != null) conn.close();
			} catch (Exception e) { }
		}
		
		if (flag > 0) {
			return true;
		} else {
			return false;
		}
	}
	
	public boolean delete(String memberId){
		Connection conn = null;
		PreparedStatement pstmt = null;
		int flag = 0;
		String sql = "DELETE FROM member WHERE memberId=? ";
		
		try {
			conn = new DbcpBean().getConn();
			pstmt = conn.prepareStatement(sql);
			pstmt.setString(1, memberId);

			flag = pstmt.executeUpdate();
		} catch (SQLException se) {
			se.printStackTrace();
		} finally {
			try {
				if (pstmt != null) pstmt.close();
				if (conn != null) conn.close();
			} catch (Exception e) { }
		}
		
		if (flag > 0) {
			return true;
		} else {
			return false;
		}
	}
}
