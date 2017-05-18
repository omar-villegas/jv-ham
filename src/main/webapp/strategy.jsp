<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@page import="jvham.strategy.Strategy"%>
<%@page import="jvham.strategy.MenuDesayuno"%>
<%@page import="jvham.strategy.MenuDia"%>
<%@page import="jvham.strategy.Context"%>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Restaurante de Hambuguesas | Luis Fernando Ramirez Vasquez</title>
<link rel="stylesheet" type="text/css" href="css/mimain.css">
</head>
<body>
<h1 align=center>Strategy</h1>
<div>
<br>
<p>En esta secci&oacute;n se aplica el patr&oacute;n Strategy en el men&uacute; del desayuno y el men&uacute; del d&iacute;a. Cuando la hora es de 7AM a 12PM se muestra el men&uacute; del desayuno y cuando es de 12PM a 10PM se muestra el men&uacute; del d&iacute;a.</p>
<%
Context context = new Context(new MenuDesayuno());	
%>
<%=context.executeStrategy("7:00AM a 12:00PM")%>
<%
context = new Context(new MenuDia());		
%>

<%=context.executeStrategy("12:00PM a 10:00PM") %>
<br>
</div>
<br>
Ramirez Vasquez Luis Fernando - 2017
</body>
</html>