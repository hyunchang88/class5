package acorn.work.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;

import acorn.work.WorkDto;
import acorn.util.DbcpBean;

public class WorkDao {
	// 자신의 객체를 저장할 수 있는 static 맴버필드
	private static WorkDao dao;
	// 외부에서 객체 생성할 수 없도록
	private WorkDao(){}
	//참조값을 리턴해주는 static 멤버 메소드
	public static WorkDao getInstance(){
		if(dao==null){
			dao=new WorkDao();
		}
		return dao;
	}
	public boolean insert(WorkDto dto){
		Connection conn=null;
		PreparedStatement pstmt=null;
		int flag=0;
		try{
			//Connection 객체의 참조값 얻어오기
			conn=new DbcpBean().getConn();
			String sql="INSERT INTO work "
					+"(workno, workname, workdesc, workspace, workarea, workterm, workhow, workcompany, pic) "
					+"VALUES(workNo_SEQ.NEXTVAL,?,?,?,?,?,?,?,?)";
			pstmt=conn.prepareStatement(sql);
			pstmt.setString(1, dto.getWorkName());
			pstmt.setString(2, dto.getWorkDesc());
			pstmt.setString(3, dto.getWorkspace());
			pstmt.setString(4, dto.getWorkarea());
			pstmt.setString(5, dto.getWorkterm());
			pstmt.setString(6, dto.getWorkhow());
			pstmt.setString(7, dto.getWorkcompany());
			pstmt.setString(8, dto.getPic());
			flag=pstmt.executeUpdate();
		}catch(Exception e){
			e.printStackTrace();
		}finally{
			try{
				if(pstmt!=null)pstmt.close();
				//Connection 객체의 .close() 메소드 호출하면
				//Connection 객체가 알아서 반납된다
				if(conn!=null)conn.close();
			}catch(Exception e){}
		}
		if(flag>0){
			return true; //작업 성공
		}else{
			return false; //작업 실패
		}
	}//insert()
	
	public List<WorkDto> getList(){
		Connection conn=null;
		PreparedStatement pstmt=null;
		ResultSet rs=null;
		List<WorkDto> list=new ArrayList<WorkDto>();
		try{
			conn=new DbcpBean().getConn();
			String sql="SELECT workno, workname, workdesc, workspace, workarea, workterm, workhow, workcompany, pic"
					+ " FROM work "
					+ " ORDER BY workno DESC";
			pstmt=conn.prepareStatement(sql);
			rs=pstmt.executeQuery();
			while(rs.next()){
				int wnum=rs.getInt("workno");
				String wname=rs.getString("workname");
				String wdesc=rs.getString("workdesc");
				String wspace=rs.getString("workspace");
				String warea=rs.getString("workarea");
				String wterm=rs.getString("workterm");
				String whow=rs.getString("workhow");
				String wcompony=rs.getString("workcompany");
				String wpic=rs.getString("pic");
		
				//글정보를 BoardDto 에 담아서
				WorkDto dto=new WorkDto();
				dto.setWorkno(wnum);
				dto.setWorkName(wname);
				dto.setWorkDesc(wdesc);
				dto.setWorkspace(warea);
				dto.setWorkarea(warea);
				dto.setWorkterm(wterm);
				dto.setWorkhow(whow);
				dto.setWorkcompany(wcompony);
				dto.setPic(wpic);
				
				//List<BoardDto>에 저장한다.
				list.add(dto);		
			}
		}catch(Exception e){
			e.printStackTrace();
		}finally{
			try{
				if(rs!=null)rs.close();
				if(pstmt!=null)pstmt.close();
				if(conn!=null)conn.close();
			}catch(Exception e){}
		}
		//글목록을 리턴해준다.
		return list;
	}//getList()

	//인자로 전달되는 번호에 해당되는 글 정보를 리턴해주는 메소드
		public WorkDto getData(int wnum){
			Connection conn=null;
			PreparedStatement pstmt=null;
			ResultSet rs=null;
			WorkDto dto=null;
			try{
				conn=new DbcpBean().getConn();
				String sql="SELECT workname, workdesc, workspace, workarea, workterm, workhow, workcompany, pic "
					+ "FROM work WHERE workno=?";
				pstmt=conn.prepareStatement(sql);
				// ? 에 값 바인딩하기
				pstmt.setInt(1, wnum);
				rs=pstmt.executeQuery();
				if(rs.next()){
					String wname=rs.getString("workname");
					String wdesc=rs.getString("workdesc");
					String wspace=rs.getString("workspace");
					String warea=rs.getString("workarea");
					String wterm=rs.getString("workterm");
					String whow=rs.getString("workhow");
					String wcompony=rs.getString("workcompany");
					String wpic=rs.getString("pic");
					//글정보를 BoardDto에 담기
					dto=new WorkDto(wnum,wname,wdesc,wspace,warea,wterm,whow,wcompony,wpic);
				}
			}catch(Exception e){
				e.printStackTrace();
			}finally{
				try{
					if(rs!=null)rs.close();
					if(pstmt!=null)pstmt.close();
					if(conn!=null)conn.close();
				}catch(Exception e){}
			}
			return dto;
		}//getData()

		//글정보를 수정하는 메소드
		public boolean update(WorkDto dto){
			Connection conn=null;
			PreparedStatement pstmt=null;
			int flag=0;
			try{
				conn=new DbcpBean().getConn();
				String sql="UPDATE work "
						+ "SET workname=?, workdesc=?, workspace=?, workarea=?, workterm=?, workhow=?, workcompany=?, pic=?"
						+ "WHERE workno=?";
				pstmt=conn.prepareStatement(sql);
				pstmt.setString(1, dto.getWorkName());
				pstmt.setString(2, dto.getWorkDesc());
				pstmt.setString(3, dto.getWorkspace());
				pstmt.setString(4, dto.getWorkarea());
				pstmt.setString(5, dto.getWorkterm());
				pstmt.setString(6, dto.getWorkhow());
				pstmt.setString(7, dto.getWorkcompany());
				pstmt.setString(8, dto.getPic());
				pstmt.setInt(9, (int) dto.getWorkno());
				flag=pstmt.executeUpdate();
			}catch(Exception e){
				e.printStackTrace();
			}finally{
				try{
					if(pstmt!=null)pstmt.close();
					if(conn!=null)conn.close();
				}catch(Exception e){}
			}//try()
			
			if(flag>0){
				return true;
			}else{
				return false;
			}
		}//update(


		//게시물을 삭제하는 메소드
		public boolean delete(int wno){
			Connection conn=null;
			PreparedStatement pstmt=null;
			int flag=0;
			try{
				conn=new DbcpBean().getConn();
				String sql="DELETE FROM work WHERE workno=?";
				pstmt=conn.prepareStatement(sql);
				pstmt.setInt(1, wno);
				flag=pstmt.executeUpdate();
			}catch(Exception e){
				e.printStackTrace();
			}finally{
				try{
					if(pstmt!=null)pstmt.close();
					if(conn!=null)conn.close();
				}catch(Exception e){}
			}//try()
			if(flag>0){
				return true;
			}else{
				return false;
			}
		}//delete()

		
}
