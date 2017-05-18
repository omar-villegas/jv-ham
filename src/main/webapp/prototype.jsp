<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@page import="jvham.prototype.Prototype"%>
<%@page import="jvham.prototype.A"%>
<%@page import="jvham.prototype.Consola"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Restaurante de Hambuguesas | Luis Fernando Ramirez Vasquez</title>
<link rel="stylesheet" type="text/css" href="css/mimain.css">
</head>
<body>
<h1 align=center>Prototype</h1>
<div>
<br>
<p>En esta secci&oacute;n se aplica el patr&oacute;n Prototype en las sucursales de la cadena de restaurantes. El objeto clonado es una sucursal y al clonarlo se vuelve m&aacute;s grande el n&uacute;mero de sucursales totales.</p>
<%
A a = new A(1);

for (int i = 1; i < 10; i++) {
    Prototype temp = a.clone();
    temp.setSize(i);
    temp.printSize();
}
%>
<%=Consola.texto %>
<% 
Consola.texto = "";
%>
<br>
</div>
<br>
Ramirez Vasquez Luis Fernando - 2017
</body>
</html>