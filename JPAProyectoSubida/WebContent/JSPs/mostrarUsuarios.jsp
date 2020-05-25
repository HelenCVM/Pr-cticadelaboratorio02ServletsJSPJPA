<?xml version="1.0" encoding="ISO-8859-1" ?>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@  taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<!DOCTYPE html  >
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1" />
<title>Insert title here</title>
<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/css/bootstrap.min.css" integrity="sha384-Vkoo8x4CGsO3+Hhxv8T/Q5PaXtkKtu6ug5TOeNV6gBiFeWPGFN9MuhOf23Q9Ifjh" crossorigin="anonymous">
<link href="/css/estilos.css" rel="stylesheet" type="text/css" />
</head>
<body style="background-color:powderblue;">
<div class="container col-lg-3">
 <form action="/JPAProyecto/ListarBPublica" style="padding: 30px;">

<div class="form-group">
    <h1 style="color:black;font-family: verdana;text-align:center;border: 1px solid black;">Busqueda</h1>   
</div>
   
<div class="form-group">
<label >Buscar por cedula:</label>
<input class="form-control" type="text" name="cedula"  required>
</div>
   
<input  class="btn btn-info btn-block" type="submit" value="Enviar">

<br />
<table class="table">
  <thead>
    <tr>
      <th scope="col">Cedula</th>
      <th scope="col">Nombre</th>
      <th scope="col">Apellido</th>
      <th scope="col">Correo</th>
    </tr>
  </thead>
</table>
 
<table class="table">
    <tbody>
    <tr>
	<td>${resultado.getCedula()}</td>
	<td>${resultado.getNombre()}</td>
	<td>${resultado.getApellido()}</td>
	<td><p><a href="mailto:${resultado.getCorreo()}">${resultado.getCorreo()}</a></p></td>
	</tr>
  </tbody>
</table>

<table class="table">
  <thead>
    <tr>
      <th scope="col">Numero</th>
      <th scope="col">Tipo</th>
      <th scope="col">Operadora</th>

   </tr>
  </thead>
</table>

<c:forEach items="${resultadoo}" var="res">
  <table class="table">
    <tbody>
    <tr>
    <td><p><a href="tel:${res.getNumero()}">${res.getNumero()}</a></p></td>
    <td>${res.getTipo()}</td>
    <td>${res.getOperadora()}</td>
  </tr>
  </tbody>
</table>

 
</c:forEach>
</form>
</div>

<script src="https://code.jquery.com/jquery-3.4.1.slim.min.js" integrity="sha384-J6qa4849blE2+poT4WnyKhv5vZF5SrPo0iEjwBvKU7imGFAV0wwj1yYfoRSJoZ+n" crossorigin="anonymous"></script>
<script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.0/dist/umd/popper.min.js" integrity="sha384-Q6E9RHvbIyZFJoft+2mJbHaEWldlvI9IOYy5n3zV9zzTtmI3UksdQRVvoxMfooAo" crossorigin="anonymous"></script>
<script src="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/js/bootstrap.min.js" integrity="sha384-wfSDF2E50Y2D1uUdj0O3uMBJnjuUD4Ih7YwaYd1iqfktj0Uod8GCExl3Og8ifwB6" crossorigin="anonymous"></script>
</body>
</html>