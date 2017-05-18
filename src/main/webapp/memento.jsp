<%@page import="jvham.memento.Caretaker"%>
<%@page import="jvham.memento.Memento"%>
<%@page import="jvham.memento.Inventario"%>
<%@page import="java.util.ArrayList"%>

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
<h1 align=center> Memento </h1>
<div>
<br>
<p>En esta secci&oacute;n, se aplica el patr&oacute;n Memento en el inventario de ingredientes. Se tiene un originador de datos en una clase Inventario, a la que se le modifican la cantidad de ingredientes del inventario. 
La clase Caretaker graba el estado actual en la clase Memento para poder recuperar los valores anteriores cuando se desee, como si fuera un historial de cantidades.</p>

<%
Caretaker caretaker = new Caretaker();
Inventario originator = new Inventario();
int[] vista = originator.getState();
%>
<h3>Estado inicial:</h3>
<ul><li>Panes: <%=vista[0]%></li><li>Carnes: <%=vista[1]%></li><li>Lechugas: <%=vista[2]%></li><li>Tomates: <%=vista[3]%></li><li>Cebollas: <%=vista[4]%></li><li>Quesos: <%=vista[5]%></li></ul>

<%
originator.setState(new int[]{9,8,7,6,5,4});
caretaker.add( originator.save() );
vista = originator.getState();
%>
<h3>Estado 2:</h3>
<ul><li>Panes: <%=vista[0]%></li><li>Carnes: <%=vista[1]%></li><li>Lechugas: <%=vista[2]%></li><li>Tomates: <%=vista[3]%></li><li>Cebollas: <%=vista[4]%></li><li>Quesos: <%=vista[5]%></li></ul>

<%
originator.setState(new int[]{8,7,6,5,4,3});
caretaker.add( originator.save() );
vista = originator.getState();
%>
<h3>Estado 3:</h3>
<ul><li>Panes: <%=vista[0]%></li><li>Carnes: <%=vista[1]%></li><li>Lechugas: <%=vista[2]%></li><li>Tomates: <%=vista[3]%></li><li>Cebollas: <%=vista[4]%></li><li>Quesos: <%=vista[5]%></li></ul>

<%
originator.setState(new int[]{7,6,5,4,3,2});
caretaker.add( originator.save() );
vista = originator.getState();
%>
<h3>Estado 4:</h3>
<ul><li>Panes: <%=vista[0]%></li><li>Carnes: <%=vista[1]%></li><li>Lechugas: <%=vista[2]%></li><li>Tomates: <%=vista[3]%></li><li>Cebollas: <%=vista[4]%></li><li>Quesos: <%=vista[5]%></li></ul>

<%
originator.restore( caretaker.get(0));
vista = originator.getState();
%>
<h3>Estado 2 recuperado:</h3>
<ul><li>Panes: <%=vista[0]%></li><li>Carnes: <%=vista[1]%></li><li>Lechugas: <%=vista[2]%></li><li>Tomates: <%=vista[3]%></li><li>Cebollas: <%=vista[4]%></li><li>Quesos: <%=vista[5]%></li></ul>

<%
originator.restore( caretaker.get(2));
vista = originator.getState();

%>
<h3>Estado 4 recuperado:</h3>
<ul><li>Panes: <%=vista[0]%></li><li>Carnes: <%=vista[1]%></li><li>Lechugas: <%=vista[2]%></li><li>Tomates: <%=vista[3]%></li><li>Cebollas: <%=vista[4]%></li><li>Quesos: <%=vista[5]%></li></ul>
<br>
<br>
<div id=botones></div>
</div>
<div id=divVer></div>
<br>
Ramirez Vasquez Luis Fernando - 2017
</body>

</html>