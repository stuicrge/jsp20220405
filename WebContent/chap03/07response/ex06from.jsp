<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.util.*" %>
<% request.setCharacterEncoding("utf-8"); %>
<%

String location = "ex06to.jsp";
//response.sendRedirect(location);

String location2 = "/jsp55/chap03/07response/ex06to.jsp";
//response.sendRedirect(location2);

String location3 = request.getContextPath()+"/chap03/07response/ex06to.jsp";
response.sendRedirect(location3);
%>