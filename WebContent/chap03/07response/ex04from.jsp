<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.util.*" %>
<% request.setCharacterEncoding("utf-8"); %>
<%

//data 전달
request.setAttribute("movie","doctor");

String loc = "ex04to.jsp?age=90";
response.sendRedirect(loc);
%>