<%@page import="jvham.mediator.Chat"%>
<%@page import="jvham.mediator.ChatMediator"%>
<%@page import="jvham.mediator.User"%>
<%@page import="jvham.mediator.ChatMediatorImpl"%>
<%@page import="jvham.mediator.UserImpl"%>
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
<h1 align=center> Mediator </h1>
<div>
<br>
<p>En esta secci&oacute;n se aplica el patr&oacute;n Mediator en la conversaci&oacute;n que tiene el empleado y el cliente a trav&eacute;s del servicio de drive-thru, donde el Mediator es el sistema de micr&oacute;fonos y bocinas para comunicarse.</p>
<h3>Conversaci&oacute;n: </h3>
<%
ChatMediator mediator = new ChatMediatorImpl();
User user1 = new UserImpl(mediator, "Empleado");
User user2 = new UserImpl(mediator, "Cliente");
mediator.addUser(user1);
mediator.addUser(user2);
Chat.textoChat = "";
user1.send("Bienvenido. ¿Puedo tomar su orden?");
user2.send("Hola. Quiero un combo Estrella mediano, porfavor.");
%>
<div id="consola">
<p><%=Chat.textoChat %></p>
</div>
<br>
</div>
<br>
Ramirez Vasquez Luis Fernando - 2017
</body>
</html>