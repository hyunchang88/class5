<%@page import="test.company.dto.CompanyDto"%>
<%@page import="test.company.dao.CompanyDao"%>
<%@page import="java.util.List"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
//BoardDao 객체의 참조값 얻어오기
CompanyDao dao = CompanyDao.getInstance();
//회원목록 얻어오기
/* List<CompanyDto> comlist = dao.getList(); */
List<CompanyDto> list = dao.getList();
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
					<form id="searchForm" action="/zws/partner/searchPartner.do" method="post">
					<input id="currentPage" name="currentPage" type="hidden" value="1">
					<input id="orderBy" name="orderBy" type="hidden" value="">
					<select id="region1" name="region1" class="sel_01 form-control select"><option value="">--시/도--</option><option value="서울" name="서울">서울</option><option value="경기" name="경기">경기</option><option value="부산" name="부산">부산</option><option value="대구" name="대구">대구</option><option value="인천" name="인천">인천</option><option value="광주" name="광주">광주</option><option value="대전" name="대전">대전</option><option value="울산" name="울산">울산</option><option value="강원" name="강원">강원</option><option value="충북" name="충북">충북</option><option value="충남" name="충남">충남</option><option value="전북" name="전북">전북</option><option value="전남" name="전남">전남</option><option value="경북" name="경북">경북</option><option value="경남" name="경남">경남</option><option value="제주특별자치도" name="제주도">제주도</option><option value="세종특별자치시" name="세종특별자치시">세종특별자치시</option></select>
					<input id="searchValue" name="searchValue" class="form-control search_big_input form-second" type="text" value="">
					<button class="btn" type="submit" onclick="goSearch();">검색</button>
					</form>
				</div>
				<!-- / search big -->

				<!-- partners list -->
				<div class="list_tile_container">
					<h4 class="margin-bottom-0">파트너스 리스트</h4>
					<ul class="list_tile partners">
						
						<!-- / list item -->
					</ul>
				</div>
				
				<!-- pagination -->
				<div class="page margin-bottom-50">
					<ul class="pagination type02">
						<ul class="pagination type02"><li class="active"><a href="/zws/partner/searchPartner.do?region1=&amp;searchValue=&amp;currentPage=1">1</a></li><li><a href="/zws/partner/searchPartner.do?region1=&amp;searchValue=&amp;currentPage=2">2</a></li><li><a href="/zws/partner/searchPartner.do?region1=&amp;searchValue=&amp;currentPage=3">3</a></li><li><a href="/zws/partner/searchPartner.do?region1=&amp;searchValue=&amp;currentPage=4">4</a></li><li><a href="/zws/partner/searchPartner.do?region1=&amp;searchValue=&amp;currentPage=5">5</a></li><li><a href="/zws/partner/searchPartner.do?region1=&amp;searchValue=&amp;currentPage=6">›</a></li><li><a href="/zws/partner/searchPartner.do?region1=&amp;searchValue=&amp;currentPage=21">»</a></li></ul>
					</ul>
				</div>
			</div>