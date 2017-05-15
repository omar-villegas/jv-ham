<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@page import="jvham.interpreter.Expression"%>
<%@page import="jvham.interpreter.IsInExpression"%>
<%@page import="jvham.interpreter.OrExpression"%>
<%@page import="jvham.interpreter.AndExpression"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Restaurante de Hambuguesas | Luis Fernando Ramirez Vasquez</title>
<link rel="stylesheet" type="text/css" href="css/mimain.css">
</head>
<body>
<h1 align=center> Interpreter </h1>
<div>
<br>
<p>En esta secci&oacute;n se aplica el patr&oacute;n Interpreter, al analizar diferentes frases que los cientes digan al pedir una orden. Se busca si las frases contienen "sin queso" y "sin mayonesa" en el an&aacute;lisis AND, y "sin pepinillos" o "sin salsa" en el an&aacute;lisis OR.</p>
<br>
<%
Expression queso = new IsInExpression("sin queso");
Expression mayo = new IsInExpression("sin mayonesa");
Expression isQuesoAndMayo = new AndExpression(queso, mayo);

Expression pepinillos = new IsInExpression("sin pepinillos");
Expression salsa = new IsInExpression("sin salsa");
Expression isPepinillosOrSalsa = new OrExpression(pepinillos, salsa);

System.out.print("Sin queso y sin mayonesa?: ");
System.out.println(isQuesoAndMayo.evaluate("Desayuno sin queso"));
System.out.print("Sin pepinillos o sin salsa?: ");
System.out.println(isPepinillosOrSalsa.evaluate("Vegetariana sin salsa"));
System.out.print("Sin queso y sin mayonesa?: ");
System.out.println(isQuesoAndMayo.evaluate("Estrella sin queso y sin mayonesa"));
System.out.print("Sin pepinillos o sin salsa?: ");
System.out.println(isPepinillosOrSalsa.evaluate("Hamburguesa sin salsa"));
System.out.print("Sin pepinillos o sin salsa?: ");
System.out.println(isPepinillosOrSalsa.evaluate("Estrella sin queso"));
%>

Frase AND a analizar: <select id="selectAND">
  <option value="null"></option>
  <option value="Desayuno sin queso">Desayuno sin queso</option>
  <option value="Estrella sin queso y sin mayonesa">Estrella sin queso y sin mayonesa</option>
</select>
<p>¿Sin queso y sin mayonesa?: </p>
<p id="pAND"></p>

Frase OR a analizar: <select id="selectOR">
  <option value="null"></option>
  <option value="Vegetariana sin salsa">Vegetariana sin salsa</option>
  <option value="Hamburguesa sin pepinillos">Hamburguesa sin pepinillos</option>
  <option value="Estrella sin queso">Estrella sin queso</option>
</select>
<p>¿Sin pepinillos o sin salsa?: </p>
<p id="pOR"></p>
<br>
</div>
<br>
Ramirez Vasquez Luis Fernando - 2017
</body>
<script src="js/jquery-3.2.0.js"></script>
<script>
$(document).ready(function(){
	
	$("#selectAND").change(function(){

		if($("#selectAND").val() == "null"){
			$("#pAND").empty();

		}
		if($("#selectAND").val() == "Desayuno sin queso"){
			$("#pAND").html("Respuesta: "+<%=isQuesoAndMayo.evaluate("Desayuno sin queso")%>);
		}
		
		if($("#selectAND").val() == "Estrella sin queso y sin mayonesa"){
			$("#pAND").html("Respuesta: "+<%=isQuesoAndMayo.evaluate("Estrella sin queso y sin mayonesa")%>);
		}
		
	});
	
	$("#selectOR").change(function(){

		if($("#selectOR").val() == "null"){
			$("#pOR").empty();
			
		}
		if($("#selectOR").val() == "Vegetariana sin salsa"){
			$("#pOR").html("Respuesta: "+<%=isPepinillosOrSalsa.evaluate("Vegetariana sin salsa")%>);
		}
		
		if($("#selectOR").val() == "Hamburguesa sin pepinillos"){
			$("#pOR").html("Respuesta: "+<%=isPepinillosOrSalsa.evaluate("Hamburguesa sin pepinillos")%>);
		}
		
		if($("#selectOR").val() == "Estrella sin queso"){
			$("#pOR").html("Respuesta: "+<%=isPepinillosOrSalsa.evaluate("Estrella sin queso")%>);
		}
		
	});
	
});
</script>
</html>