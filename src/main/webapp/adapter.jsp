<%@page import="jvham.adapter.CelciusReporter"%>
<%@page import="jvham.adapter.TemperatureClassReporter"%>
<%@page import="jvham.adapter.TemperatureInfo"%>
<%@page import="jvham.adapter.TemperatureObjectReporter"%>
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
<h1 align=center> Adapter </h1>
<div>
<br>
<p>En esta secci&oacute;n, se aplica el patr&oacute;n Adapter, en la temperatura del horno donde se cocinan las hamburguesas y la conversi&oacute;n de grados celsius a fahrenheit.</p>
<br>
<h3>Temperatura del horno: </h3>
<%
System.out.println("class adapter test");
TemperatureInfo tempInfo = new TemperatureClassReporter();

tempInfo.setTemperatureInC(0);

String m1 = ("Temp en C:" + tempInfo.getTemperatureInC());
String m2 = ("Temp en F:" + tempInfo.getTemperatureInF());

tempInfo.setTemperatureInF(85);
String m3 = ("Temp en C:" + tempInfo.getTemperatureInC());
String m4 = ("Temp en F:" + tempInfo.getTemperatureInF());

// object adapter
System.out.println("\nobject adapter test");
tempInfo = new TemperatureObjectReporter();

tempInfo.setTemperatureInC(0);
String m5 = ("Temp en C:" + tempInfo.getTemperatureInC());
String m6 = ("Temp en F:" + tempInfo.getTemperatureInF());

tempInfo.setTemperatureInF(85);
String m7 = ("Temp en C:" + tempInfo.getTemperatureInC());
String m8 = ("Temp en F:" + tempInfo.getTemperatureInF());
%>
<h4>Adapter de clase: </h4>
<p><%=m1 %></p>
<p><%=m2 %></p>
<p><%=m3 %></p>
<p><%=m4 %></p>
<h4>Adapter de objeto: </h4>
<p><%=m5 %></p>
<p><%=m6 %></p>
<p><%=m7 %></p>
<p><%=m8 %></p>
<br>
</div>
<br>
Ramirez Vasquez Luis Fernando - 2017
</body>
</html>