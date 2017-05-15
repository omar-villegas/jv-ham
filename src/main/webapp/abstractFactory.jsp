<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@page import="jvham.abstractFactory.Cliente"%>
<%@page import="jvham.abstractFactory.Complementos"%>
<%@page import="jvham.abstractFactory.ComplementosConSal"%>
<%@page import="jvham.abstractFactory.ComplementosSinSal"%>
<%@page import="jvham.abstractFactory.Papas"%>
<%@page import="jvham.abstractFactory.PapasConSal"%>
<%@page import="jvham.abstractFactory.PapasSinSal"%>
<%@page import="jvham.abstractFactory.Nuggets"%>
<%@page import="jvham.abstractFactory.NuggetsConSal"%>
<%@page import="jvham.abstractFactory.NuggetsSinSal"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Restaurante de Hambuguesas | Luis Fernando Ramirez Vasquez</title>
<link rel="stylesheet" type="text/css" href="css/mimain.css">
</head>
<body>
<h1 align=center> Abstract Factory </h1>
<div>
<br>
<p>En esta secci&oacute;n, se aplica el patr&oacute;n Abstract Factory. a implementación se hará con clases de tipo Papas y Nuggets, que tienen dos variedades: Con Sal y Sin Sal.
Estas variedades se fabricarán en la clase Complementos, de la que derivan ComplementosConSal y ComplementosSinSal.</p>
<br>
<h3>Implementaci&oacute;n: </h3>
<%
// Se insertarán los componentes con sal
Cliente cliente = new Cliente( new ComplementosConSal() );
System.out.println("----------------------------");
// Ahora se insertarán los componentes sin sal
cliente = new Cliente( new ComplementosSinSal() );
//-------------------------------------------------------------------------
Complementos complementosConSal = new ComplementosConSal();

Papas papas = complementosConSal.getPapas();
String mConfigurarPapas = papas.configurar();
String mEntregarPapas = papas.entregar();

Nuggets nuggets = complementosConSal.getNuggets();
String mConfigurarNuggets = nuggets.configurar();
String mEntregarNuggets = nuggets.entregar();


%>
<p><%=mConfigurarPapas %></p>
<p><%=mEntregarPapas %></p>
<p><%=mConfigurarNuggets %></p>
<p><%=mEntregarNuggets %></p>

<%
Complementos complementosSinSal = new ComplementosSinSal();

Papas papasSin = complementosSinSal.getPapas();
String mConfigurarPapasSin = papasSin.configurar();
String mEntregarPapasSin = papasSin.entregar();

Nuggets nuggetsSin = complementosSinSal.getNuggets();
String mConfigurarNuggetsSin = nuggetsSin.configurar();
String mEntregarNuggetsSin = nuggetsSin.entregar();
%>
<p><%=mConfigurarPapasSin %></p>
<p><%=mEntregarPapasSin %></p>
<p><%=mConfigurarNuggetsSin %></p>
<p><%=mEntregarNuggetsSin %></p>
<br>
</div>
<br>
Ramirez Vasquez Luis Fernando - 2017
</body>
</html>