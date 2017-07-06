
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<%@page import="acorn.company.CompanyDto"%>
<%@page import="acorn.company.CompanyDao"%>
<%@page import="java.util.List"%>
<%
String workarea=request.getParameter("workArea");
String inputvalue=request.getParameter("inputvalue");

if(inputvalue==null){
	inputvalue="%";
}

CompanyDao dao = CompanyDao.getInstance();
List<CompanyDto> list = dao.getList();
List<CompanyDto> searchlists = dao.getSearchList(workarea,inputvalue);
System.out.println(workarea);
%>
<style>
	li{
		display:inline-block;
		font-size:15px;
	}
	
</style>
<link rel="stylesheet" href="../resource/css/bootstrap.css" />
	<link rel="stylesheet" href="../resource/css/font-awesome.css"/>
	<link rel="stylesheet" href="../resource/js/DB_navi24.css" type="text/css"></link>
	<script type="text/javascript" src="../resource/js/jquery-3.2.0.js"></script><!--jquery라이브러리-->
	<script type="text/javascript" src="../resource/js/jquery.DB_naviFullWideMove.min.js"></script>
	<script src="../resource/js/holder.js"></script>
<body>
	
	<!-- / search big -->
	<jsp:include page="../navbar.jsp" ></jsp:include>
	
				<div class="list_tile_container" style="padding-top:100px; text-align:center">
					<ul class="list_tile partners">
						<!-- list item -->
						<%for(CompanyDto tmp:searchlists){ %>
							<li style="margin:10px 10px 10px 10px;">
								<a href="companydetail.jsp?companyno=<%=tmp.getCompanyNo() %>" >
									<div>
										<img src="holder.js/300x200" alt="" />
									</div>
									<div>
										<%=tmp.getCompanyName() %>
									</div>
									<div>
										<%=tmp.getCompanyCeoPhone() %>
									</div>									
								</a>
							</li>
						<%} %>
						<!-- / list item -->
					</ul>
				</div>
					
	<!-- / search big -->		
</body>

				