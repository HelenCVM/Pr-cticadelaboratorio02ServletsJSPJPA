<?xml version="1.0" encoding="ISO-8859-1" ?>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@  taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
 
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body style="background-color:powderblue;">
     <% String accountId= request.getParameter("codigo");
        String co2=(String)session.getAttribute("co1");
        String ema2=(String)session.getAttribute("ema1");
        
        String numero= request.getParameter("numero");
        String tipo= request.getParameter("tipo");
        String operadora= request.getParameter("operadora");
        String cedula= request.getParameter("cedula");
   %>
  
    
    <h1 style="color:black;font-family: verdana;text-align:center;border: 1px solid black;">Si quiere Eliminar?</h1>
    <form action="/JPAProyecto/Obtener" style="padding: 30px;">
    <input type="hidden"  name="codi" value=<%= accountId %>>
     <input type="hidden"  name="numero" value=<%= numero %>>
      <input type="hidden"  name="tipo" value=<%= tipo %>>
       <input type="hidden"  name="operadora" value=<%= operadora%>>
        <input type="hidden"  name="cedula" value=<%= cedula %>>

	<input style="text-decoration: none;padding: 10px;font-weight: 600;font-size: 20px;color: #ffffff;background-color: #1883ba;border-radius: 6px;border: 2px solid #0016b0;text-align:center;align-items: center;justify-content: center;margin: auto; display: block;" type="submit" value="Confirmar">
</form>
    

</form>
  
</body>
</html>