<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import = "java.util.*"%>
<%@ page import = "chap11.*" %>
<% request.setCharacterEncoding("utf-8"); %>
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.1.1/css/all.min.css" integrity="sha512-KfkfwYDsLkIlwQp6LFnl8zNdLGxu9YAA1QvwINks4PhcElQSvqcyVLLD9aMhXd13uQjoXtEKNosOWaZqXgel0g==" crossorigin="anonymous" referrerpolicy="no-referrer" />
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<%
Map<String, Object> map = new HashMap<>();
map.put("KIA",new Car("k5",3000));
map.put("benz", new Car("5",5000));

map.put("son", new Student("손흥민","남",100));
map.put("cha", new Student("차범근","여",120));

pageContext.setAttribute("beans",map);
%>

<p>${beans.KIA.model }</p>
<p>${beans.benz.model }</p>
<p>${beans.KIA.price }</p>
<p>${beans.benz.price }</p>


<p>${beans.son.name }</p>
<p>${beans.son.gender }</p>
<p>${beans.son.score }</p>

<p>${beans.cha.name }</p>
<p>${beans.cha.gender }</p>
<p>${beans.cha.score }</p>
</body>
</html>