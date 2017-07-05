<%@page import="acorn.company.CompanyDto"%>
<%@page import="acorn.company.CompanyDao"%>
<%@page import="java.util.List"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<%
String workarea=request.getParameter("workArea");
String inputvalue = request.getParameter("inputvalue");

if(inputvalue==null){
	inputvalue="%";
}

CompanyDao dao = CompanyDao.getInstance();
List<CompanyDto> list = dao.getList();
List<CompanyDto> searchlists = dao.getSearchList(workarea,inputvalue);
System.out.println(workarea);
%>

<script src="../resource/js/holder.js"></script>
<div class="container">
				<!-- page summary -->
				<div class="page_summary">
					<div class="ps_icon_box"><img src="holder.js/300x200" alt=""></div>
                    <h3>집닥은 꼼꼼하게 파트너스를 선별합니다.</h3>
                    <p>
                        집닥의 파트너스들은 각 분야에서 전문적인 노하우를 갖춘 인테리어 전문 업체들로<br>
                        아파트, 빌라, 주택, 각종 매장, 공연장, 공공기관 등 전 분야의 인테리어 시공이 가능합니다.
                    </p>
				</div>
				<!-- / page summary -->

				<!-- best partners -->
				<div class="list_tile_container">
					<h4 class="margin-bottom-0">베스트 파트너스</h4>
					<ul class="list_tile partners">
						<!-- list item -->
						<%for(int i=0; i<3; i++){ %>
							<li>
								<a href="#">
									<div>
										<img src="holder.js/300x200" alt="" />
									</div>
									<div>
										<%=list.get(i).getCompanyName() %>
									</div>									
								</a>
							</li>
						<%} %>
						<!-- / list item -->
					</ul>
				</div>
				<!-- best partners -->

				<!-- search big -->
				<div class="search_big with_option_1 margin-top-50 margin-bottom-30">
					<form id="searchForm" action="companySearch.jsp" method="post">
							<select id="region1" name="workArea">
							<option value="*">--시/도--</option>
							<option value="서울">서울</option>
							<option value="경기">경기</option>
							<option value="부산">부산</option>
							<option value="대구">대구</option>
							<option value="인천">인천</option>
							<option value="광주">광주</option>
							<option value="대전">대전</option>
							<option value="울산">울산</option>
							<option value="강원">강원</option>
							<option value="충북">충북</option>
							<option value="충남">충남</option>
							<option value="전북">전북</option>
							<option value="전남">전남</option>
							<option value="경북">경북</option>
							<option value="경남">경남</option>
							<option value="제주">제주</option>
							<option value="세종">세종</option>
							</select>
							<input id="searchValue" name="inputvalue" class="form-control search_big_input form-second" type="text" value="">
						<button class="btn" type="submit" onclick="goSearch();">검색</button>
					</form>
				</div>
				<!-- / search big -->
					<div>
						<ul>
						<h3>검색결과입니다.</h3>
							<%for(CompanyDto tmg:searchlists){ %>
								<a href="">
									<li>
										<%=tmg.getCompanyName() %>
									</li>
								</a>								
							<%} %>
						</ul>
					
					</div>					
				<!-- partners list -->

</div>