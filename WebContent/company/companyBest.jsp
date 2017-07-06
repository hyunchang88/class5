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
<!-- best partners -->
				<div class="list_tile_container" style="text-align: center">
					<h4 class="margin-bottom-0">베스트 파트너스</h4>
					<ul class="list_tile partners">
						<!-- list item -->
						<%for(int i=0; i<3; i++){ %>
							<li>
								<a href="#">
									<div id="imagewrapper">
										<img src="holder.js/300x200"/>
									</div>
									<div id="namewrapper">
										<%=listB.get(i).getCompanyName() %>
									</div>									
								</a>
							</li>
						<%} %>
						<!-- / list item -->
					</ul>
				</div>
<!-- best partners -->