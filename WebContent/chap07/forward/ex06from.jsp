<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.util.*" %>
<% request.setCharacterEncoding("utf-8"); %>

<%

List<String> list = new ArrayList<>();
list.add("Josh");
list.add("Mattew");
list.add("Steven");
request.setAttribute("names", list);

String A = "doctor";//=String A = new String("doctor")

request.setAttribute("job", A);
%>
<jsp:forward page="ex06to.jsp">
</jsp:forward>