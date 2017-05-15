<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@page import="jvham.factoryMethod.Forma"%>
<%@page import="jvham.factoryMethod.Hamburguesa"%>
<%@page import="jvham.factoryMethod.Torta"%>
<%@page import="jvham.factoryMethod.Sandwich"%>
<%@page import="jvham.factoryMethod.FormaFactory"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Restaurante de Hambuguesas | Luis Fernando Ramirez Vasquez</title>
<link rel="stylesheet" type="text/css" href="css/mimain.css">
</head>
<body>
<h1 align=center> Factory Method </h1>
<div>
<br>
<p>En esta secci&oacute;n se aplica el patr&oacute;n Factory Method en la forma de los platillos. Se manda un par&aacute;metro con una palabra clave y el programa decide qu&eacute; tipo de objeto generar.</p>
<br>
<%
FormaFactory shapeFactory = new FormaFactory();
%>
Tipo de comida:
<select id="selectF">
  <option value="null"></option>
  <option value="HAMBURGUESA">HAMBURGUESA</option>
  <option value="TORTA">TORTA</option>
  <option value="SANDWICH">SANDWICH</option>
</select>
<p id="pMensaje"></p>
<br>
</div>
<br>
Ramirez Vasquez Luis Fernando - 2017
</body>
<script src="js/jquery-3.2.0.js"></script>
<script>
$(document).ready(function(){
	
	$("#selectF").change(function(){

		if($("#selectF").val() == "null"){
			$("#pMensaje").empty();
		}
		if($("#selectF").val() == "HAMBURGUESA"){
			<%
			Forma shape1 = shapeFactory.getShape("HAMBURGUESA");		
			%>
			$("#pMensaje").html("Mensaje: " + "<%=shape1.cocina()%>");
		}
		
		if($("#selectF").val() == "TORTA"){
			<%
			Forma shape2 = shapeFactory.getShape("TORTA");		
			%>
			$("#pMensaje").html("Mensaje: " + "<%=shape2.cocina()%>");
		}
		
		if($("#selectF").val() == "SANDWICH"){
			<%
			Forma shape3 = shapeFactory.getShape("SANDWICH");		
			%>
			$("#pMensaje").html("Mensaje: " + "<%=shape3.cocina()%>");
		}
	});
	
});
</script>
</html>