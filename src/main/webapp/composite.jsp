<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@page import="jvham.composite.Empleado"%>
<%@page import="jvham.composite.Gerente"%>
<%@page import="jvham.composite.Mesero"%>
<%@page import="jvham.composite.Consola"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Restaurante de Hambuguesas | Luis Fernando Ramirez Vasquez</title>
<link rel="stylesheet" type="text/css" href="css/mimain.css">
</head>
<body>
<h1 align=center>Composite</h1>
<div>
<br>
<p>En esta secci&oacute;n se aplica el patr&oacute;n Composite al salario de los empleados. Un empleado puede ser de tipo Mesero (el nodo hoja) o de tipo Gerente (el nodo padre).</p>
<br>
<%
Empleado emp1 = new Mesero("Juan", 10000);
Empleado emp2 = new Mesero("David", 15000);
Empleado manager1 = new Gerente("Daniel",25000);
manager1.add(emp1);
manager1.add(emp2);
Empleado emp3 = new Mesero("Miguel", 2000);
Gerente generalManager = new Gerente("Pedro", 50000);
generalManager.add(emp3);
generalManager.add(manager1);
generalManager.print();
%>
<div id="consola">
<p><%=Consola.texto %></p>
</div>
<%Consola.texto = "";%>
<br>
</div>
<br>
Ramirez Vasquez Luis Fernando - 2017
</body>
</html>