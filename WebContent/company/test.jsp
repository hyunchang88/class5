<%@page import="acorn.company.CompanyDto"%>
<%@page import="java.util.ArrayList"%>
<%@page import="java.util.List"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="acorn.util.DbcpBean"%>
<%@page import="java.sql.Connection"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
pageEncoding="UTF-8"%>
<%
//1.드라이버 확인 - server시작시 META-INF/context.xml에 저장 하였다.
//2.연결 - companyDto.util에 DBCP클래스 객체생성 후 메서드 호출
Connection con = new DbcpBean().getConn();
//3.sql 작성 - 전체 글의 수를 구한다.
String sql = "select count(*) from company";
//4.상태 & 데이터
PreparedStatement pstmt = con.prepareStatement(sql);
//5.실행
ResultSet rs = pstmt.executeQuery();
int totalRow = 0;
if(rs.next()){
totalRow=rs.getInt(1); //전체 글 개수
}//if
 
System.out.println(totalRow);// 전체 글 개수 확인(console에만)
int rowPerPage = 10; // 페이지당 글의 개수
// 전체 페이지=(전체글 개수-1)/페이지당 글 수+1
int totalPage = (totalRow-1)/rowPerPage+1;
int cpage=1;//현재 페이지
 
//페이지가 전달 되어 오면 전달된 페이지로 교체
String strPage = request.getParameter("page");
if(strPage != null){
cpage = Integer.parseInt(strPage); //전달된 페이지를 현재 페이지에 저장
}//if
 
// 페이지 그룹 정보 구하기
int pagePerGroup = 3;
// 시작페이지=(현재페이지-1)/그룹당 보여줄 페이지*그룹당 보여줄 페이지+1
int startPage = (cpage-1)/pagePerGroup*pagePerGroup+1;
// 끝페이지=시작페이지+그룹당 보여줄 페이지-1
int endPage = startPage+pagePerGroup-1;
// 만약 endPage가 totalPage보다 크면 endPage에 totalPage를 넣어준다.
if(endPage>totalPage){endPage=totalPage;}
 
// 시작번호 = 현재페이지-1*페이지당 글 개수+1
int startRow = (cpage-1)*rowPerPage+1;
// 끝번호 = 시작번호+페이지당 글수-1
int endRow = startRow+rowPerPage-1;
 
// 화면에 페이지를 보여주기 위해 전체 페이지, 현재페이지를 request에 담는다.
request.setAttribute("totalPage", totalPage);
request.setAttribute("page", cpage);
 
// 페이지 표시를 위해 시작페이지, 끝페이지를 request에 담는다.
request.setAttribute("startPage", startPage);
request.setAttribute("endPage", endPage);
 
//3.sql 작성 - 보여줄 게시판의 페이지 데이터 가져오기
//기초 sql
sql = "select companyno,companyName,companyceophone"
+" from company order by companyno desc";
//rownum sql - from (기초 sql문)
sql = "select rownum rnum,companyno,companyName, companyceophone from ("+sql+")";
//페이지에 맞는 데이터를 가져오는 sql - from (rownum sql문),between ? and ? 는 startRow ~ endRow까지
sql= "select *from ("+sql+") where rnum between ? and ?";
//4.상태 & 데이터
pstmt = con.prepareStatement(sql);
pstmt.setInt(1, startRow);//시작번호
pstmt.setInt(2, endRow);//끝번호
//5.실행
rs = pstmt.executeQuery();
//6.표시 - 컬렉션객체(List)에 담아서 request객체에 담는다(request.setAttribute())//
List<CompanyDto> list = null;
while(rs.next()){
if(list==null){list=new ArrayList<CompanyDto>();}//if
CompanyDto companyDto = new CompanyDto();
companyDto.setCompanyNo(rs.getInt("companyno"));
companyDto.setCompanyName(rs.getString("companyName"));
companyDto.setCompanyCeoPhone(rs.getString("companyceophone"));
list.add(companyDto);
}//while
request.setAttribute("list", list);
//7.닫기
if(con!=null){con.close();}
if(pstmt!=null){pstmt.close();}
if(rs!=null){rs.close();}
%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>list.jsp</title>
<link rel="stylesheet" type="text/css" href="../css/site.css">
</head>
<body>
<h2>리스트</h2>
<table>
<tr>
<th>회사번호</th>
<th>회사이름</th>
<th>회사전화번호</th>
</tr>
 
<c:forEach var="companyDto" items="${list}">
<tr onclick="location='view.jsp?no=${companyDto.companyno}'" class="dataTr">
<td class="justCenter">${companyDto.companyname}</td>
<td>${companyDto.companyceophone}</td>
</tr>
</c:forEach>
 
<tr>
<td colspan="5" class="justCenter">
<%--맨처음 (첫페이지:1)로 이동 --%>
<!-- <a href="list.jsp?page=1">처음</a> -->
 
<%--이전그룹으로 이동
시작페이지가 1이 아닌경우 나타난다.
--%>
<c:if test="${startPage!=1}">
<a href="list.jsp?page=${startPage-1}">◀ 이전</a>
</c:if>
 
<%--이전페이지로 이동
현재페이지가 1이 아닐때 나타난다.
--%>
<%-- <c:if test="${page!=1}"> --%>
<%-- <a href="list.jsp?page=${page-1}">&lt;</a> --%>
<%-- </c:if> --%>
<c:forEach var="pageIndex" begin="${startPage}" end="${endPage}" varStatus="cnt">
<%-- 현재 페이지는 링크를 걸지 않는다. --%>
<c:if test="${page==pageIndex}">${pageIndex}</c:if>
<c:if test="${page!=pageIndex}">
<a href="list.jsp?page=${pageIndex}">${pageIndex}</a>
</c:if>
</c:forEach>
 
<%--다음페이지로 이동
현제페이지가 total페이지(맨 마지막 페이지)가 아니면 나타난다.
--%>
<%-- <c:if test="${page!=totalPage}"> --%>
<%-- <a href="list.jsp?page=${page+1}">&gt;</a> --%>
<%-- </c:if> --%>
 
<%--다음그룹으로 이동
마지막 페이지가 totalPage가 아닌경우 나타난다.
--%>
<c:if test="${endPage!=totalPage}">
<a href="list.jsp?page=${endPage+1}">다음 ▶</a>
</c:if>
 
<%-- 마지막(totalPage)으로 이동 --%>
<%-- <a href="list.jsp?page=${totalPage}">끝</a> --%>
</td>
</tr>
 
<tr>
<td colspan="5" class="justCenter">
<button onclick="location='writeForm.jsp'">글쓰기</button>
<button onclick="location='list.jsp?page=${page}'">새로고침</button>
</td>
</tr>
</table>
</body>
</html>