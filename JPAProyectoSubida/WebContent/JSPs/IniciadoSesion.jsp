<?xml version="1.0" encoding="ISO-8859-1" ?>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@  taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html  style="background-color:powderblue;" >
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1" />
<title>Insert title here</title>
<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/css/bootstrap.min.css" integrity="sha384-Vkoo8x4CGsO3+Hhxv8T/Q5PaXtkKtu6ug5TOeNV6gBiFeWPGFN9MuhOf23Q9Ifjh" crossorigin="anonymous">
</head>
<body style="background-color:powderblue;">

${requestScope.variablePeticion}
${pageScope.variablePagina}

<% 
  String co1=(String)session.getAttribute("correo");
  String ema1=(String)session.getAttribute("contrasena");
  String c1=(String)session.getAttribute("cedula1");
%>
<c:set var="p3" value="${resultado}" />

<h1 style="color:black;font-family:verdana;text-align:center;border: 1px solid black;">Telefonos</h1>
    <form action="/JPAProyecto/BuscarListarPorCorreo" style="padding: 30px;">
    <h3 style="color:black;font-family: verdana;text-align:center;">Listar telefonos asociados:</h3>
    <input  type="hidden" name="buscar" value="${sessionScope.variableSession}">
<hr/>
<br />
<input style="text-decoration: none;padding: 10px;font-weight: 600;font-size: 20px;color: #ffffff;background-color: #1883ba;border-radius: 6px;border: 2px solid #0016b0;text-align:center;align-items: center;justify-content: center;margin: auto; display: block;" type="submit" value="Mostrar">
<br />
<table class="table">
  
  <thead>
    <tr>
      <th scope="col">Codigo</th>
      <th scope="col">Numero</th>
      <th scope="col">Tipo</th>
      <th scope="col">Operadora</th>
      <th scope="col">Eliminar</th>
      <th scope="col">Modificar</th>
    </tr>
  </thead>
 </table>
 
 
 
 
<c:forEach items="${resultado}" var="res">
 <table class="table">
  <tbody>
    <tr>
    <td>${res.getCodigo()}</td>
    <td>${res.getNumero()}</td>
    <td>${res.getTipo()}</td>
    <td>${res.getOperadora()}</td>
    <td><a href="http://localhost:8082/JPAProyecto/JSPs/eliminar.jsp?codigo=${res.getCodigo()}&<%=co1%>&<%=ema1%>&numero=${res.getNumero()}&tipo=${res.getTipo()}&operadora=${res.getOperadora()}&cedula=${sessionScope.variableSession}" >Si?</a></td>
    <td><a href="http://localhost:8082/JPAProyecto/JSPs/modificar.jsp?${sessionScope.variableSession}&codigo=${res.getCodigo()}&<%=co1%>&<%=ema1%>" >Si?</a></td>  
  </tr>
  </tbody>
  </table>
 
</c:forEach>
</form>

<h1 style="color:black;font-family: verdana;text-align:center;border:1px solid black;">Opciones:</h1>
<br />
<p style="color:black;font-family:verdana;text-align:center;"><a href="http://localhost:8082/JPAProyecto/JSPs/registrar.jsp?${sessionScope.variableSession}&<%=co1%>&<%=ema1%>">1#Registrar telefono</a><p>

<form action="/JPAProyecto/Cerrar" style="padding: 30px;">
<br />
<input style="text-decoration: none;padding: 10px;font-weight: 600;font-size: 20px;color: #ffffff;background-color: #1883ba;border-radius: 6px;border: 2px solid #0016b0;text-align:center;align-items: center;justify-content: center;margin: auto; display: block;" type="submit" value="Cerrar Sesion">
<br />



<script src="https://code.jquery.com/jquery-3.4.1.slim.min.js" integrity="sha384-J6qa4849blE2+poT4WnyKhv5vZF5SrPo0iEjwBvKU7imGFAV0wwj1yYfoRSJoZ+n" crossorigin="anonymous"></script>
<script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.0/dist/umd/popper.min.js" integrity="sha384-Q6E9RHvbIyZFJoft+2mJbHaEWldlvI9IOYy5n3zV9zzTtmI3UksdQRVvoxMfooAo" crossorigin="anonymous"></script>
<script src="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/js/bootstrap.min.js" integrity="sha384-wfSDF2E50Y2D1uUdj0O3uMBJnjuUD4Ih7YwaYd1iqfktj0Uod8GCExl3Og8ifwB6" crossorigin="anonymous"></script>
</body>
</html>