<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@page import="jvham.flyweight.SaborSoda"%>
<%@page import="jvham.flyweight.Menu"%>
<%@page import="jvham.flyweight.Orden"%>
<%@page import="jvham.flyweight.ServicioSodas"%>
<%@page import="jvham.flyweight.Consola"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Restaurante de Hambuguesas | Luis Fernando Ramirez Vasquez</title>
<link rel="stylesheet" type="text/css" href="css/mimain.css">
</head>
<body>
<h1 align=center> Flyweight </h1>
<div>
<br>
<p>En esta secci&oacute;n se aplica el patr&oacute;n Flyweight, en la creaci&oacute;n de &oacute;rdenes de sodas, donde s&oacute;lo se crea un objeto de tipo SaborSoda si el sabor de la soda es diferente a los creados anteriormente.</p>
<%
ServicioSodas shop = new ServicioSodas();

shop.takeOrder("Naranja", 2);
shop.takeOrder("Fresa", 1);
shop.takeOrder("Toronja", 1);
shop.takeOrder("Fresa", 14);
shop.takeOrder("Naranja", 20);
shop.takeOrder("Fresa", 3);
shop.takeOrder("Toronja", 3);
shop.takeOrder("Naranja", 3);
shop.takeOrder("Toronja", 4);
shop.takeOrder("Fresa", 12);
shop.takeOrder("Naranja", 15);
shop.takeOrder("Toronja", 18);

shop.service();
System.out.println(shop.report());
%>
<div id="consola">
<p><%=Consola.textoConsola %></p>
</div>
<%Consola.textoConsola = "";%>
<br>
</div>
<br>
Ramirez Vasquez Luis Fernando - 2017
</body>
</html>