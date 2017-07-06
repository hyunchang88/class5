<%@page import="acorn.company.CompanyDto"%>
<%@page import="acorn.company.CompanyDao"%>
<%@page import="java.util.List"%>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>

<%
	CompanyDao dao = CompanyDao.getInstance();
	List<CompanyDto> list = dao.getList();
%>	

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
	<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
	<title>/member/SearchCompany.jsp</title>
	<style>
		.selectedCompany{
			background-color: yellow;
		}
	</style>
	<script>
		function selectCompanyNo(){
			var companyNo = $("#selectedCompanyNo").val();
			var companyName = $("#selectedCompanyName").val();
			
			opener.memberInsertForm.companyNo.value = companyNo;
			opener.memberInsertForm.companyName.value = companyName;
			self.close();
		}
		
		function closePopup(){
			self.close();
		}
	</script>
</head>

<body>
	<h3>회사 리스트</h3><br/>
	
	<form action="nopopup.jsp" method="post" name="myForm">
		<input type="hidden" id="selectedCompanyNo" name="selectedCompanyNo"/>
		<input type="hidden" id="selectedCompanyName" name="selectedCompanyName"/>
		
		<table id="memberList" border="1" cellspacing="0">
					<colgroup>
						<col width="100"/>
						<col width="400"/>
					</colgroup>

					<thead>
						<tr style="height:40px;">
							<th>회사번호</th>
							<th>회사이름</th>
						</tr>
					</thead>

					<tbody id="companyListTable">
 					<%for(CompanyDto tmp : list){ %>
						<tr class="companyList">
							<td class="companyNo"><%=tmp.getCompanyNo() %></td>
							<td class="companyName" data-num="<%=tmp.getCompanyNo() %>">
								<%=tmp.getCompanyName() %>
							</td>
						</tr>
					<%} %>
					</tbody>
				</table><br/>
		
		<a href="javascript:selectCompanyNo()">회사선택하기</a>&nbsp;&nbsp;&nbsp;
		<a href="javascript:closePopup()">화면닫기</a>
	</form>
	
	<script src="../resource/js/jquery-3.2.0.js"></script>
	<script>
		$(".companyName").on("click", function(){
			var num = $(this).attr("data-num");
			$("#selectedCompanyNo").val(num);
			$("#selectedCompanyName").val($(this).text().trim());
			
		    $(this)              //클릭 이벤트가 일어난 요소에는 
		        .addClass("selectedCompany")    // 클래스를 추가하고
		        .parent()                       // 그 부모 요소의
		        .siblings()                     // 형제 요소 중에서 
		        .children()                     // 자녀요소의
		        .removeClass("selectedCompany");// 클래스를 제거하기 
		});
	</script>
</body>
</html>
