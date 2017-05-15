<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@page import="jvham.bridge.Orden"%>
<%@page import="jvham.bridge.Sencilla"%>
<%@page import="jvham.bridge.Combo"%>
<%@page import="jvham.bridge.TipoDeEntrega"%>
<%@page import="jvham.bridge.ParaComerAqui"%>
<%@page import="jvham.bridge.ParaLlevar"%>
<%@page import="jvham.bridge.Consola"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Restaurante de Hambuguesas | Luis Fernando Ramirez Vasquez</title>
<link rel="stylesheet" type="text/css" href="css/mimain.css">
</head>
<body>
<h1 align=center> Bridge</h1>
<div>
<br>
<p>En esta secci&oacute;n se aplica el patr&oacute;n Bridge en las &oacute;rdenes de comida. Se pueden preparar &oacute;rdenes sencillas o en combo, y tienen la caracter&iacute;stica de poder ser para comer aqu&iacute; o para llevar.</p>
<%
Orden o1 = new Combo(new ParaComerAqui());
o1.prepara();
Orden o2 = new Sencilla(new ParaLlevar());
o2.prepara();
Orden o3 = new Combo(new ParaLlevar());
o3.prepara();
Orden o4 = new Sencilla(new ParaComerAqui());
o4.prepara();
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