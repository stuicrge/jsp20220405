<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.util.*" %>
<% request.setCharacterEncoding("utf-8"); %>
<%@ page import = "java.net.URLEncoder"%>

<%
	String value="자바";
	String encodedValue=URLEncoder.encode(value,"utf-8");
	response.sendRedirect("/jsp55/chap03/book/index.jsp?name="+encodedValue);
%>