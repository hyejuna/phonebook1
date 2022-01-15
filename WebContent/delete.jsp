<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import = "com.javaex.dao.PhoneDao" %>
<%
	PhoneDao phoneDao = new PhoneDao();
	
	int personId = Integer.parseInt(request.getParameter("id"));
	
	phoneDao.personDelete(personId);
	
	response.sendRedirect("./list.jsp");
	
%>
