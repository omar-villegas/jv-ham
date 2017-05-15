<%@page import="jvham.templatemethod.HacerHamburguesa"%>
<%@page import="jvham.templatemethod.HacerEstrella"%>
<%@page import="jvham.templatemethod.HacerVegetariana"%>
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
<h1 align=center> Template Method </h1>
<div>
<br>
<p>En esta secci&oacute;n, se aplica el patr&oacute;n Template Method a la preparaci&oacute;n de las hamburguesas. Se tiene una clase base HacerHamburguesa de la que se derivan HacerEstrella y HacerVegetariana. Preparar los ingredientes es diferente en cada caso pero armar la hamburguesa es un comportamiento común.</p>
<%
HacerHamburguesa star = new HacerEstrella();
HacerHamburguesa veggie = new HacerVegetariana();
String[] starList = star.prepararHamburguesa();
String[] veggieList = veggie.prepararHamburguesa();
%>
<h3>Estrella:</h3>
<p><%=starList[0] %></p>
<P><%=starList[1] %></P>
<h3>Vegetariana:</h3>
<p><%=veggieList[0] %></p>
<p><%=veggieList[1] %></p>
<br>
</div>
<br>
Ramirez Vasquez Luis Fernando - 2017
</body>
</html>