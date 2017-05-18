<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@page import="jvham.facade.ProcesarOrden"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Restaurante de Hambuguesas | Luis Fernando Ramirez Vasquez</title>
<link rel="stylesheet" type="text/css" href="css/mimain.css">
</head>
<body>
<h1 align=center>Facade</h1>
<div>
<br>
<p>En esta secci&oacute;n se aplica el patr&oacute;n Facade en el procesamiento de las &oacute;rdenes. Se tienen tres procesos: 
RecibirOrden, CocinarOrden, y EntregarOrden. Estos se juntan en una clase ProcesarOrden que crea una fachada conteniendo todos los 
m&eacute;todos de los procesos individuales.
</p>
<%
ProcesarOrden proceso1 = new ProcesarOrden();
%>
<h3>ProcesarOrden.procesa() :</h3>
<%=proceso1.procesa() %>
<br>
</div>
<br>
Ramirez Vasquez Luis Fernando - 2017
</body>
</html>