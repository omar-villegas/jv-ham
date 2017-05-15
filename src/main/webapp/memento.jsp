<%@page import="jvham.memento.Caretaker"%>
<%@page import="jvham.memento.Memento"%>
<%@page import="jvham.memento.Inventario"%>
<%@page import="java.util.ArrayList"%>

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
<h1 align=center> Memento </h1>
<div>
<br>
<p>En esta secci&oacute;n, se aplica el patr&oacute;n Memento.</p>
<br>
<%
Caretaker caretaker = new Caretaker();
Inventario originator = new Inventario();
%>
Panes:   <input type="number" name="panes" id="panes" min="0" max="20">
<br>
Carnes:  <input type="number" name="carnes" id="carnes" min="0" max="20">
<br>
Lechugas:<input type="number" name="lechugas" id="lechugas" min="0" max="20">
<br>
Tomates: <input type="number" name="tomates" id="tomates" min="0" max="20">
<br>
Cebollas:<input type="number" name="cebollas" id="cebollas" min="0" max="20">
<br>
Quesos:  <input type="number" name="quesos" id="quesos" min="0" max="20">
<br>
<button type="button" id="guardar">Guardar estado</button>
<br>
<br>
<div id=botones></div>
</div>
<div id=divVer></div>
<br>
Ramirez Vasquez Luis Fernando - 2017
</body>
<script src="js/jquery-3.2.0.js"></script>
<script type="text/javascript">
$(document).ready(function(){
	<%
	int[] vistaInicial = originator.Ver();
	%>
	$("#panes").val = vistaInicial[0];
	$("#carnes").val = vistaInicial[1];
	$("#lechugas").val = vistaInicial[2];
	$("#tomates").val = vistaInicial[3];
	$("#cebollas").val = vistaInicial[4];
	$("#quesos").val = vistaInicial[5];
	request.setParameter("n1", $("#panes").val());
	request.setParameter("n2", $("#carnes").val());
	request.setParameter("n3", $("#lechugas").val());
	request.setParameter("n4", $("#tomates").val());
	request.setParameter("n5", $("#cebollas").val());
	request.setParameter("n6", $("#quesos").val());
	
	var numBoton = 1;
	$("#guardar").click(function(){
		var n1 = $("#panes").val();
		var n2 = $("#carnes").val();
		var n3 = $("#lechugas").val();
		var n4 = $("#tomates").val();
		var n5 = $("#cebollas").val();
		var n6 = $("#quesos").val();
		request.setParameter("n1", $("#panes").val());
		request.setParameter("n2", $("#carnes").val());
		request.setParameter("n3", $("#lechugas").val());
		request.setParameter("n4", $("#tomates").val());
		request.setParameter("n5", $("#cebollas").val());
		request.setParameter("n6", $("#quesos").val());
		<%
		int n1 = Integer.parseInt(request.getParameter("n1"));
		int n2 = Integer.parseInt(request.getParameter("n2"));
		int n3 = Integer.parseInt(request.getParameter("n3"));
		int n4 = Integer.parseInt(request.getParameter("n4"));
		int n5 = Integer.parseInt(request.getParameter("n5"));
		int n6 = Integer.parseInt(request.getParameter("n6"));
		
        originator.setState(new int[]{n1,n2,n3,n4,n5,n6});
        caretaker.addMemento( originator.save() );
        %>
        $("div#botones").append('<button type="button" id=ver>Ver estado '+numBoton+'</button><button type="button" id="recuperar">Recuperar estado '+numBoton+'</button><br>');
        numBoton++;
        
        $("button#ver").click(function(){
        	<%
        	int[] vista = originator.Ver();
        	%>
        	$("#divVer").html('<p>Panes: '+<%=vista[0]%>+'</p><p>Carnes: '+<%=vista[1]%>+'</p><p>Lechugas: '+<%=vista[2]%>+'</p><p>Tomates: '+<%=vista[3]%>+'</p><p>Cebollas: '+<%=vista[4]%>+'</p><p>Quesos: '+<%=vista[5]%>+'</p>');
        });


        $("#recuperar").click(function(){
    	});
        
	});
	
});
</script>
</html>