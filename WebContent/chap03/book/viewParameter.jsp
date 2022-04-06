<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.util.*" %>
<%
	request.setCharacterEncoding("utf-8");

%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>요청 파라미터 출력</title>
</head>
<body>
<b>request.getParameter()메서드사용</b><br>
name 파라미터 = <%= request.getParameter("name") %><br>
address 파라미터 = <%= request.getParameter("address") %>
<p>
<b>request.getParametervalues()메서드 사용</b><br>
<%
	String[] values=request.getParameterValues("pet");
	if(values!=null){
		for(int i=0;i<values.length;i++){
	
%>
<%= values[i] %>
<%
		}
	}
%>
</p>
<p>
<b>request.getParamterNames()메서드 사용</b><br>
<%
	Enumeration paramEnum = request.getParameterNames();
	while(paramEnum.hasMoreElements()){
		String name = (String)paramEnum.nextElement();	
%>
	<%= name %>
	
	<%
	}
	%>	
	</p>
	<p>
	<b>reqeust.getParamterMap() 메서드 사용</b>
	<%
		Map parameterMap = request.getParameterMap();
		String[] nameParam=(String[])parameterMap.get("name");
		if(nameParam!=null){
	%>
	name=<%= nameParam[0] %>
	<%
		}
	%>
	</p>
</body>
</html>