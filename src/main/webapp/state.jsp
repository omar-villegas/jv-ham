<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@page import="jvham.state.State"%>
<%@page import="jvham.state.Chain"%>
<%@page import="jvham.state.Off"%>
<%@page import="jvham.state.Low"%>
<%@page import="jvham.state.Medium"%>
<%@page import="jvham.state.High"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta charset="ISO-8859-1">
<title>Restaurante de Hambuguesas | Luis Fernando Ramirez Vasquez</title>
<link rel="stylesheet" type="text/css" href="css/mimain.css">
</head>
<body>
<h1 align=center> State </h1>
<div>
<br>
<p>En esta secci&oacute;n se aplica el patr&oacute;n State.</p>
<br>
<%
Chain chain = new Chain();
int i = 0;
while (i<8) {
    System.out.print( "Press 'Enter'" );
    chain.pull();
    i++;
}
%>
<br>
</div>
<br>
Ramirez Vasquez Luis Fernando - 2017
</body>
</html>