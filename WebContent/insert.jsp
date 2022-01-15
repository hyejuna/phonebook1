<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import = "com.javaex.vo.PersonVo" %>
<%@ page import = "com.javaex.dao.PhoneDao" %>

<%@ page import = "java.util.List" %>

<%
	PhoneDao phoneDao = new PhoneDao();
	///////////////////////////////////////
	//저장
	//////////////////////////////////////
	
	//request의 메소드를 이용해서 parameter 꺼내기
	String name = request.getParameter("name");
	String hp =request.getParameter("hp");
	String company = request.getParameter("company");
	/* 테스트
	System.out.println(name);
	System.out.println(hp);
	System.out.println(company);
	*/
	
	//vo로 값 묶기
	PersonVo personVo = new PersonVo(name, hp, company);
	
	//db에 저장
	phoneDao.personInsert(personVo); 
	
	//리다이렉트
	response.sendRedirect("./list.jsp");
	
%>
