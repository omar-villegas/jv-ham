<%@page import="jvham.proxy.Image"%>
<%@page import="jvham.proxy.RealImage"%>
<%@page import="jvham.proxy.ProxyImage"%>
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
<h1 align=center> Proxy </h1>
<div>
<br>
<p>En esta secci&oacute;n se aplica el patr&oacute;n Proxy al desplegar el menú del restaurante. La primera vez que carga la imagen se debe cargar con la clase RealImage, pero las siguientes, la clase ProxyImage se ocupar&aacute; de cargar la imagen existente.</p>
<%
Image image = new ProxyImage("imgPMenuRes.jpg");
//image will be loaded from disk
image.display(); 
System.out.println("");

//image will not be loaded from disk
image.display(); 
%>
<h3>Imagen inicial: </h3>
<img src=img/<%=image.display() %> alt="imgHHamburguesa" height="250">
<h3>Imagen de Proxy: </h3>
<img src=img/<%=image.display() %> alt="imgHHamburguesa" height="250">
<br>
</div>
<br>
Ramirez Vasquez Luis Fernando - 2017
</body>
</html>