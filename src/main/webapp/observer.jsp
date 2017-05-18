<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@page import="jvham.observer.Observer"%>
<%@page import="jvham.observer.Subject"%>
<%@page import="jvham.observer.MyTopic"%>
<%@page import="jvham.observer.MyTopicSubscriber"%>
<%@page import="jvham.observer.Consola"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Restaurante de Hambuguesas | Luis Fernando Ramirez Vasquez</title>
<link rel="stylesheet" type="text/css" href="css/mimain.css">
</head>
<body>
<h1 align=center>Observer</h1>
<div>
<br>
<p>En esta secci&oacute;n se aplica el patr&oacute;n Observer en las notificaciones de la p&aacute;gina. Se tienen diferentes observadores de tipo Observer que son suscritos a un t&oacute;pico (promociones del restaurante).
 Si se crea una nueva promoci&oacute;n, los usuarios suscritos son notificados.</p>
<%
//create subject
		MyTopic topic = new MyTopic();
		
		//create observers
		Observer obj1 = new MyTopicSubscriber("Usuario1");
		Observer obj2 = new MyTopicSubscriber("Usuario2");
		Observer obj3 = new MyTopicSubscriber("Usuario3");
		
		//register observers to the subject
		topic.register(obj1);
		topic.register(obj2);
		topic.register(obj3);
		
		//attach observer to subject
		obj1.setSubject(topic);
		obj2.setSubject(topic);
		obj3.setSubject(topic);
		
		//check if any update is available
		obj1.update();
		obj2.update();
		obj3.update();
		
		//now send message to subject
		topic.postMessage("Promoción de verano");
%>
<div id="consola">
<%=Consola.texto %>
</div>
<%Consola.texto = ""; %>
<br>
</div>
<br>
Ramirez Vasquez Luis Fernando - 2017
</body>
</html>