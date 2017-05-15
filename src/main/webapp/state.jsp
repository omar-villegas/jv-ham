<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@page import="jvham.state.State"%>
<%@page import="jvham.state.TVStartState"%>
<%@page import="jvham.state.TVStopState"%>
<%@page import="jvham.state.TVContext"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Restaurante de Hambuguesas | Luis Fernando Ramirez Vasquez</title>
<link rel="stylesheet" type="text/css" href="css/mimain.css">
</head>
<body>
<h1 align=center> State </h1>
<div>
<br>
<p>En esta secci&oacute;n se aplica el patr&oacute;n State, en el control remoto que enciende y apaga las televisiones del restaurante.</p>
<%
TVContext context = new TVContext();
State tvStartState = new TVStartState();
State tvStopState = new TVStopState();

context.setState(tvStartState);
%>
<h3>Presionar bot&oacute;n Power: </h3>
<p><%=context.doAction() %></p>
<%
context.setState(tvStopState);
%>
<h3>Presionar bot&oacute;n Power: </h3>
<p><%=context.doAction() %></p>
<br>
</div>
<br>
Ramirez Vasquez Luis Fernando - 2017
</body>
</html>