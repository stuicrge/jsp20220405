<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.util.*" %>
<%@ page import="chap07.*"%>
<% request.setCharacterEncoding("utf-8"); %>
<%
Car car = new Car();
car.setName("KIA");
car.setPrice(500);
request.setAttribute("myCar",car);

Car car2 = new Car();
car2.setName("Hyundai");
car2.setPrice(300);
request.setAttribute("yourCar",car2);
%>
<jsp:forward page="ex09to.jsp"></jsp:forward>