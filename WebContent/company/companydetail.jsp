<%@page import="acorn.company.CompanyDao"%>
<%@page import="acorn.company.CompanyDto"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
int companynum = Integer.parseInt(request.getParameter("companyno"));
CompanyDto dto=CompanyDao.getInstance().getData(companynum);

%>    
<link rel="stylesheet" href="../resource/css/bootstrap.css" />
<link rel="stylesheet" href="../resource/css/font-awesome.css"/>
<link rel="stylesheet" href="../resource/js/DB_navi24.css" type="text/css"></link>
<script type="text/javascript" src="../resource/js/jquery-3.2.0.js"></script><!--jquery라이브러리-->
<script type="text/javascript" src="../resource/js/jquery.DB_naviFullWideMove.min.js"></script>
<script src="../resource/js/holder.js"></script>
<body>
	<jsp:include page="../navbar.jsp" ></jsp:include>
	<div class="container" style="margin-top:100px">
	<div style="text-align:center">
		<img src="holder.js/300x200" alt="" />
	</div>

	<table class="table table-striped">
		<thead>
			<tr>
				<th>회사명</th>
				<th>대표명</th>
				<th>대표연락처</th>
				<th>지역</th>
				<th>파트번호</th>			
			</tr>
		</thead>
		<tbody>
			<tr>
				<td><%=dto.getCompanyName() %></td>
				<td><%=dto.getCompanyCeoname() %></td>
				<td><%=dto.getCompanyCeoPhone() %></td>
				<td><%=dto.getWorkArea() %></td>
				<td><%=dto.getWorkNo() %></td>
			</tr>
		</tbody>
	</table>
	<p style="text-align:right; margin-right:100px; font-size:20px">
		<a href="companyList.jsp" >전 화면으로</a>
	</p>
</div>
	
</body>
