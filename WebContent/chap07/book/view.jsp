<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.util.*" %>
<%
	String code= request.getParameter("code");
	String viewPageURI = null;
	
	if(code.equals("A")){
		viewPageURI="/chap07/book/a.jsp";
	} else if(code.equals("B")){
		viewPageURI="/chap07/book/b.jsp";
	} else if(code.equals("C")){
		viewPageURI="/chap07/book/c.jsp";
	}
%>
<jsp:forward page="<%= viewPageURI %>"/>