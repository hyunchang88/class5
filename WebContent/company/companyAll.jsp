<%@page import="acorn.company.CompanyDto"%>
<%@page import="java.util.List"%>
<%@page import="acorn.company.CompanyDao"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<%     
//BoardDao 객체의 참조값 얻어오기
CompanyDao daoB = CompanyDao.getInstance();
//회원목록 얻어오기
/* List<CompanyDto> comlist = dao.getList(); */
List<CompanyDto> listB = daoB.getList();
%>
<!-- all partners -->
				<div class="list_tile_container">
					<ul class="list_tile partners">
						<!-- list item -->
						<%for(CompanyDto tmp:listB){ %>
							<li style="margin:10px 10px 10px 10px;">
								<a href="companydetail.jsp?companyno=<%=tmp.getCompanyNo() %>">
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
<!-- all partners -->