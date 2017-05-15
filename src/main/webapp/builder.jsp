<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@page import="jvham.builder.Item"%>
<%@page import="jvham.builder.Packing"%>
<%@page import="jvham.builder.Wrapper"%>
<%@page import="jvham.builder.Bottle"%>
<%@page import="jvham.builder.Burger"%>
<%@page import="jvham.builder.ColdDrink"%>
<%@page import="jvham.builder.VegBurger"%>
<%@page import="jvham.builder.ChickenBurger"%>
<%@page import="jvham.builder.Coke"%>
<%@page import="jvham.builder.Pepsi"%>
<%@page import="jvham.builder.Meal"%>
<%@page import="jvham.builder.MealBuilder"%>
<%@page import="jvham.builder.Consola"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Restaurante de Hambuguesas | Luis Fernando Ramirez Vasquez</title>
<link rel="stylesheet" type="text/css" href="css/mimain.css">
</head>
<body>
<h1 align=center>Builder</h1>
<div>
<br>
<p>En esta secci&oacute;n se aplica el patr&oacute;n Builder en la preparacion de las comidas. Se pueden crear comidas con hamburguesa y con bebida. Las hamburguesas pueden ser de tipo VegBurger o de tipo ChickenBurger. Las bebidas pueden ser de tipo Coke o Pepsi.</p>
<div id="consola">
<%
MealBuilder mealBuilder = new MealBuilder();

Meal vegMeal = mealBuilder.prepareVegMeal();
System.out.println("Veg Meal");
%>
<p>Comida Vegetariana</p>
<%
vegMeal.showItems();
%>
<%=Consola.texto %>
<%Consola.texto = "";%>
<p>Costo Total: <%=vegMeal.getCost() %></p>
<%
System.out.println("Total Cost: " + vegMeal.getCost());

Meal nonVegMeal = mealBuilder.prepareNonVegMeal();
System.out.println("\n\nNon-Veg Meal");
%>
<p>Comida No Vegetariana</p>
<%
nonVegMeal.showItems();
%>
<%=Consola.texto %>
<p>Costo Total: <%=nonVegMeal.getCost() %></p>
<%
System.out.println("Total Cost: " + nonVegMeal.getCost());
%>
</div>
<%Consola.texto = "";%>
<br>
</div>
<br>
Ramirez Vasquez Luis Fernando - 2017
</body>
</html>