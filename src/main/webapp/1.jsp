<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Teste JSP</title>
</head>
<body>
Teste JSP<br/>
<%
	String mensagem = "Hello World!";
%>

<% out.println(mensagem); %><br/>
<%=mensagem %>
</body>
</html>