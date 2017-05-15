<%@page import="jvham.decorator.Burger"%>
<%@page import="jvham.decorator.BurgerDecorator"%>
<%@page import="jvham.decorator.SimpleBurger"%>
<%@page import="jvham.decorator.Estrella"%>
<%@page import="jvham.decorator.Desayuno"%>
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
<h1 align=center> Decorator </h1>
<div>
<br>
<p>En esta secci&oacute;n, se aplica el patr&oacute;n Decorator al implementar diferentes objetos de tipo "hamburguesa", que se derivan de un solo objeto con propiedades agregadas din&aacute;micamente.</p>
Hambuguesa: 
<select id="selectD">
  <option value="null"></option>
  <option value="Estrella">Estrella</option>
  <option value="Desayuno">Desayuno</option>
  <option value="DesayunoEstrella">Desayuno Estrella</option>
</select>
<br>
<p id="decoratorD"></p>
<p id="decoratorP"></p>
<br>
</div>
<script src="js/jquery-3.2.0.js"></script>

<script>
$(document).ready(function(){
	
	$("#selectD").change(function(){

		if($("#selectD").val() == "null"){
			$("#decoratorD").empty();
			$("#decoratorP").empty();
		}
		if($("#selectD").val() == "Estrella"){

			<%
			Burger be = new SimpleBurger();
			be = new Estrella(be);
			%>
			$("#decoratorD").html("Descripci&oacute;n: " + "<%=be.getIngredients()%>");
			$("#decoratorP").html("Costo: $" + <%=be.getCost()%>);
		}
		
		if($("#selectD").val() == "Desayuno"){

			<%
			Burger bd = new SimpleBurger();
			bd = new Desayuno(bd);
			%>
			$("#decoratorD").html("Descripci&oacute;n: " + "<%=bd.getIngredients()%>");
			$("#decoratorP").html("Costo: $" + <%=bd.getCost()%>);
		}
		
		if($("#selectD").val() == "DesayunoEstrella"){
			//var burger = new Estrella(new Desayuno(new Burger()));
			<%
			Burger bde = new SimpleBurger();
			bde = new Estrella(bde);
			bde = new Desayuno(bde);
			%>
			$("#decoratorD").html("Descripci&oacute;n: " + "<%=bde.getIngredients()%>");
			$("#decoratorP").html("Costo: $" + <%=bde.getCost()%>);
		}
	});
	
});
</script>

<br>
Ramirez Vasquez Luis Fernando - 2017
</body>
</html>