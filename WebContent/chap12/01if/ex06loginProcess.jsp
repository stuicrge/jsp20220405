<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import = "java.util.*"%>
<% request.setCharacterEncoding("utf-8"); %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.1.1/css/all.min.css" integrity="sha512-KfkfwYDsLkIlwQp6LFnl8zNdLGxu9YAA1QvwINks4PhcElQSvqcyVLLD9aMhXd13uQjoXtEKNosOWaZqXgel0g==" crossorigin="anonymous" referrerpolicy="no-referrer" />
<%

String id = request.getParameter("id");
String pw = request.getParameter("pw");

if(id.equals(pw)){
	session.setAttribute("username",id);
	String loc = "ex07main.jsp";
	response.sendRedirect(loc);
}else{
	String loc = "ex05loginform.jsp?error=true";
	response.sendRedirect(loc);
	
}
%>