<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@page import="jvham.visitor.ItemElement"%>
<%@page import="jvham.visitor.Fruit"%>
<%@page import="jvham.visitor.Toy"%>
<%@page import="jvham.visitor.ShoppingCartVisitor"%>
<%@page import="jvham.visitor.ShoppingCartVisitorImpl"%>
<%@page import="jvham.visitor.ShoppingCartClient"%>
<%@page import="jvham.visitor.Consola"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Restaurante de Hambuguesas | Luis Fernando Ramirez Vasquez</title>
<link rel="stylesheet" type="text/css" href="css/mimain.css">
</head>
<body>
<h1 align=center>Visitor</h1>
<div>
<br>
<p>En esta secci&oacute;n se aplica el patr&oacute;n Visitor en los juguetes y frutas que se usan en las comidas infantiles del restaurante. Se calcula el precio de ambos en una orden que se hace por Internet y se despliega el total a pagar.</p>
<div id="consola">
<%
ItemElement[] items = new ItemElement[]{new Toy(20, "1234"),new Toy(15, "5678"),new Toy(25, "5678"),new Fruit(10, 2, "Plátano"), new Fruit(5, 5, "Manzana"), new Fruit(8, 3, "Naranja")};
double total = ShoppingCartClient.calculatePrice(items);
System.out.println("Costo total : "+total);

%>
<%=Consola.texto %>
<p>Costo total = <%= total %></p>
<%Consola.texto = ""; %>
</div>
<br>
</div>
<br>
Ramirez Vasquez Luis Fernando - 2017
</body>
</html>