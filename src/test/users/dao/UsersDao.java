package test.users.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.List;

import acorn.util.DbcpBean;
import test.users.dto.UsersDto;

public class UsersDao {
	private static UsersDao dao;
	private UsersDao(){}
	public static UsersDao getInstance(){
		if(dao==null){
			dao=new UsersDao();
		}
		return dao;
	}
	
	//회원 정보를 저장하는 메소드
	public boolean insert(UsersDto dto){
		Connection conn = null;
		PreparedStatement pstmt = null;
		int flag = 0;
		try {
			conn = new DbcpBean().getConn();
			String sql = "INSERT INTO member "
					+"(memberId, memberPwd, memberName, companyNo, memberLevel, memberEmail, memberPhone, workArea, regdate)"
					+" VALUES(?, ?, ?, ?, ?, ?, ?, ?, SYSDATE)";
			pstmt = conn.prepareStatement(sql);
			pstmt.setString(1, dto.getMemberId());
			pstmt.setString(2, dto.getMemberPwd());
			pstmt.setString(3, dto.getMemberName());
			pstmt.setString(4, dto.getCompanyNo());
			pstmt.setString(5, dto.getMemberLevel());
			pstmt.setString(6, dto.getMemberEmail());
			pstmt.setString(7, dto.getMemberPhone());
			pstmt.setString(8, dto.getWorkArea());
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
	}// insert()
	
	
	// 아이디 비밀번호가 유효한지 여부를 리턴하는 메소드
	public boolean isValid(UsersDto dto){
		Connection conn = null;
		PreparedStatement pstmt = null;
		ResultSet rs = null;
		// 아이디와 비밀번호가 맞는 정보인지 여부
		boolean isValid=false;
		try {
			conn = new DbcpBean().getConn();
			String sql = "SELECT * FROM member"
					+" WHERE memberId=? AND memberPwd=?";
			pstmt = conn.prepareStatement(sql);
			pstmt.setString(1, dto.getMemberId());
			pstmt.setString(2, dto.getMemberPwd());
			// SELECT 해서
			rs = pstmt.executeQuery();
			while (rs.next()) {//row 가 하나라도 있으면
				isValid=true; // 유효한 정보이다.
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
		// 아이디 비밀번호가 유효한 정보인지 여부를 리턴해 준다.
		return isValid;
	}//isValid()
	
	// 회원 가입된 정보를 리턴해 주는 메소드
	public UsersDto getData(String memberId){
		Connection conn = null;
		PreparedStatement pstmt = null;
		ResultSet rs = null;
		UsersDto dto=null;
		try {
			conn = new DbcpBean().getConn();
			String sql = "SELECT memberPwd,memberEmail,regdate FROM member"
					+" WHERE memberId=?";
			pstmt = conn.prepareStatement(sql);
			pstmt.setString(1, memberId);
			rs = pstmt.executeQuery();
			while (rs.next()) {
				dto=new UsersDto();
				dto.setMemberId(memberId);
				dto.setMemberPwd(rs.getString("memberPwd"));
				dto.setMemberEmail(rs.getString("memberEmail"));
				dto.setRegdate(rs.getString("regdate"));
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
	
	//회원 정보를 삭제하는 메소드
	public boolean delete(String memberId){
		Connection conn = null;
		PreparedStatement pstmt = null;
		int flag = 0;
		try {
			conn = new DbcpBean().getConn();
			String sql = "DELETE FROM member WHERE memberId=?";
			pstmt = conn.prepareStatement(sql);
			pstmt.setString(1, memberId);
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

	}// delete()
	
	//회원정보를 수정하는 메소드
	public boolean update(UsersDto dto){
		Connection conn = null;
		PreparedStatement pstmt = null;
		int flag = 0;
		try {
			conn = new DbcpBean().getConn();
			String sql = "UPDATE member SET memberPwd=?,memberEmail=? "
					+"WHERE memberId=?";
			pstmt = conn.prepareStatement(sql);
			pstmt.setString(1, dto.getMemberPwd());
			pstmt.setString(2, dto.getMemberEmail());
			pstmt.setString(3, dto.getMemberId());
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


}


































