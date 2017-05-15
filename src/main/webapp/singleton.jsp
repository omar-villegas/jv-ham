<%@page import="jvham.singleton.Singleton"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Restaurante de Hambuguesas | Luis Fernando Ramirez Vasquez</title>
<link rel="stylesheet" type="text/css" href="css/mimain.css">
</head>
<body>
<h1 align=center> Singleton </h1>
<div>
<br>
<p>En esta secci&oacute;n, se aplica el patr&oacute;n Singleton, creando una sola instancia de la clase Singleton para asegurarse que s&oacute;lo exista un men&uacute; de platillos del restaurante.</p>

<%
Singleton instanciaSingleton = Singleton.getInstance();
String[] menu = instanciaSingleton.getMenu();
Singleton instanciaSingleton2 = Singleton.getInstance();
if(instanciaSingleton ==instanciaSingleton2){
	%><p>¿Misma instancia? S&iacute;.</p><%
} else {%><p>¿Misma instancia? No.</p>
<%}
%>

<br>
Men&uacute; del restaurante:
<ul>
<% 
for (int x = 0; x < menu.length; x++){
	 %>
	 <li><%=x + ": " + menu[x] %></li>
	 <%
}
%>
</ul>
<br>
</div>
<br>
Ramirez Vasquez Luis Fernando - 2017
</body>
</html>