<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@page import="jvham.iterator.Iterator"%>
<%@page import="jvham.iterator.Container"%>
<%@page import="jvham.iterator.NameRepository"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Restaurante de Hambuguesas | Luis Fernando Ramirez Vasquez</title>
<link rel="stylesheet" type="text/css" href="css/mimain.css">
</head>
<body>
<h1 align=center> Iterator </h1>
<div>
<br>
<p>En esta secci&oacute;n se aplica el patr&oacute;n Iterator, al desplegar los nombres de los empleados, que son una colecci&oacute;n de objetos en los que se tiene un acceso secuencial.</p>
<h3>Empleados: </h3>
<%
NameRepository namesRepository = new NameRepository();

for(Iterator iter = namesRepository.getIterator(); iter.hasNext();){
   String name = (String)iter.next();
   System.out.println("Nombre : " + name);
   %>
   <p>Nombre: <%= name %></p>
   <%
} 
%>
<br>
</div>
<br>
Ramirez Vasquez Luis Fernando - 2017
</body>
</html>