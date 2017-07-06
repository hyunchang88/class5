<%@page import="acorn.company.CompanyDto"%>
<%@page import="acorn.company.CompanyDao"%>
<%@page import="java.util.List"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<style>
	#companylist li{
		display:inline-block;
	}
	ul{
   list-style:none;
   padding-left:0px;
   }
</style>
<link rel="stylesheet" href="../resource/css/bootstrap.css" />
<link rel="stylesheet" href="../resource/css/font-awesome.css"/>
<link rel="stylesheet" href="../resource/js/DB_navi24.css" type="text/css"></link>
<script type="text/javascript" src="../resource/js/jquery-3.2.0.js"></script><!--jquery라이브러리-->
<script type="text/javascript" src="../resource/js/jquery.DB_naviFullWideMove.min.js"></script>

</style>
<script src="../resource/js/holder.js"></script>
<body>
<jsp:include page="../navbar.jsp" ></jsp:include>
	<div class="container" style="text-align: center; margin-top:100px"id="companylist">
				<!-- page summary -->
				<div class="row">
					<div class="ps_icon_box" style="text-align: center"><img src="holder.js/300x200" alt=""></div>
                    <h3 style="text-align: center">집닥은 꼼꼼하게 파트너스를 선별합니다.</h3>
                    <p style="text-align: center">
                        집닥의 파트너스들은 각 분야에서 전문적인 노하우를 갖춘 인테리어 전문 업체들로<br>
                        아파트, 빌라, 주택, 각종 매장, 공연장, 공공기관 등 전 분야의 인테리어 시공이 가능합니다.
                    </p>
				</div>
				<!-- / page summary -->
				<%@ include file="companyBest.jsp" %>

				<!-- search big -->
				<div class="">
					<form id="searchForm" action="companySearch.jsp" method="post">
							<select id="region1" name="workArea" >
								<option value="%">--시/도--</option>
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
							<input id="searchValue" name="inputvalue" class="form-control" type="text" value=""style="display:inline-block; width:50%">
						<button class="btn" type="submit" onclick="goSearch();">검색</button>
					</form>
				</div>
				<!-- / search big -->
				
				<!-- partners list -->
				<div class="list_tile_container">
					<h4 class="margin-bottom-0">파트너스 리스트</h4>
					<ul class="list_tile partners">
						<jsp:include page="companyAll.jsp" />
						<!-- / list item -->
					</ul>
				</div>	
				
			</div>
</body>
