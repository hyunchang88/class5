<%@page import="acorn.work.WorkDao"%>
<%@page import="acorn.work.WorkDto"%>

<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
	//요청 인코딩 설정
	request.setCharacterEncoding("utf-8"); 
	//폼전송되는 내용 읽어오기
	String wname=request.getParameter("workname");
	String wdesc=request.getParameter("workdesc");
	String wspace=request.getParameter("workspace");
	String warea=request.getParameter("workarea");
	String wterm=request.getParameter("workterm");
	String whow=request.getParameter("workhow");
	String wcompony=request.getParameter("workcompany");
	String wpic=request.getParameter("workpic");
	//BoardDto 객체에 담는다.
	WorkDto dto=new WorkDto();
	dto.setWorkName(wname);
	dto.setWorkDesc(wdesc);
	dto.setWorkspace(warea);
	dto.setWorkarea(warea);
	dto.setWorkterm(wterm);
	dto.setWorkhow(whow);
	dto.setWorkcompany(wcompony);
	dto.setPic(wpic);
	//BoardDao 객체를 이용해서 DB 에 저장한다. 
	WorkDao dao=WorkDao.getInstance();
	boolean isSuccess=dao.insert(dto);
	//응답하기 
%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>insert.jsp</title>
</head>
<body>
<%if(isSuccess){ %>
	<p>새글을 저장했습니다.</p>
<%}else{ %>
	<p>새글 저장 실패!</p>
<%} %>
<a href="wokrList.jsp">글 목록 보기</a>
</body>
</html>

