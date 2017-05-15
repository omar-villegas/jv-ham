<%@page import="jvham.chainofresponsibility.AtencionAlCliente"%>
<%@page import="jvham.chainofresponsibility.EmpleadoComun"%>
<%@page import="jvham.chainofresponsibility.Supervisor"%>
<%@page import="jvham.chainofresponsibility.Peticion"%>
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
<h1 align=center> Chain of Responsibility </h1>
<div>
<br>
<p>En esta secci&oacute;n, se aplica el patr&oacute;n Chain of Responsibility al servicio de atenci&oacute;n al cliente, dirigiendo la petici&oacute;n de ayuda al empleado correspondiente, de acuerdo al tipo de petici&oacute;n.</p>
<br>
Tipo de petici&oacute;n:
<select id="selectD">
  <option value="null"></option>
  <option value="catsup">Necesito m&aacute;s catsup</option>
  <option value="orden">Mi orden es incorrecta</option>
  <option value="membresia">Mi membres&iacute;a caduc&oacute;</option>
</select>
<p id="chainP"></p>
<br>
<%
AtencionAlCliente m1 = new EmpleadoComun();
AtencionAlCliente m2 = new Supervisor();

m1.setSucesor(m2);
//m1.manejarPeticion(new Peticion("Negativo ",-1));
//m1.manejarPeticion(new Peticion("Positivo ",0));

%>
<br>
</div>

<script src="js/jquery-3.2.0.js"></script>

<script>
$(document).ready(function(){
	
	$("#selectD").change(function(){

		if($("#selectD").val() == "null"){
			$("#chainP").empty();
		}
		if($("#selectD").val() == "catsup"){
			$("#chainP").html("Respuesta: " + "<%=m1.manejarPeticion(new Peticion("Tipo 1 ",-1))%>");
		}
		
		if($("#selectD").val() == "orden"){
			$("#chainP").html("Respuesta: " + "<%=m1.manejarPeticion(new Peticion("Tipo 1 ",-1))%>");
		}
		
		if($("#selectD").val() == "membresia"){
			$("#chainP").html("Respuesta: " + "<%=m1.manejarPeticion(new Peticion("Tipo 2 ",5))%>");
		}
	});
	
});
</script>

<br>
Ramirez Vasquez Luis Fernando - 2017
</body>
</html>