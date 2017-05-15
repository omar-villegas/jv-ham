<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@page import="jvham.command.Consola"%>
<%@page import="jvham.command.Command"%>
<%@page import="jvham.command.LightsOffCommand"%>
<%@page import="jvham.command.LightsOnCommand"%>
<%@page import="jvham.command.Light"%>
<%@page import="jvham.command.RemoteControl"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Restaurante de Hambuguesas | Luis Fernando Ramirez Vasquez</title>
<link rel="stylesheet" type="text/css" href="css/mimain.css">
</head>
<body>
<h1 align=center> Command </h1>
<div>
<br>
<p>En esta secci&oacute;n se aplica el patr&oacute;n Command, en las luces del restaurante. Si se activa el switch y las luces est&aacute;n encendidas, se apagan. Y si est&aacute;n apagadas, se encienden. </p>
<%
RemoteControl control = new RemoteControl();
Light light = new Light();
Command lightsOn = new LightsOnCommand(light);
Command lightsOff = new LightsOffCommand(light);

//switch on

control.setCommand(lightsOn);
control.pressButton();
%>
<h3>Luz apagada: </h3>
<p><%=Consola.estado %>
<%
//switch off

control.setCommand(lightsOff);
control.pressButton();
%>
<h3>Luz encencida: </h3>
<p><%=Consola.estado %>
<br>
<br>
</div>
<br>
Ramirez Vasquez Luis Fernando - 2017
</body>
</html>