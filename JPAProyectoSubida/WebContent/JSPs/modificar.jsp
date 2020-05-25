<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1" />
<title>Insert title here</title>
<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/css/bootstrap.min.css" integrity="sha384-Vkoo8x4CGsO3+Hhxv8T/Q5PaXtkKtu6ug5TOeNV6gBiFeWPGFN9MuhOf23Q9Ifjh" crossorigin="anonymous">
<link href="/css/estilos.css" rel="stylesheet" type="text/css" />
</head>
<body style="background-color:powderblue;">
 <% String accountId= request.getParameter("codigo"); %>
 <div class="container col-lg-3">
 <form action="/JPAProyecto/ModificarTele" style="padding: 30px;">
   <div class="form-group">
       <h1 style="color:black;font-family: verdana;text-align:center;border: 1px solid black;width:400px;margin-left:100px">Modificar Telefono</h1>
   </div>
   
   <div class="form-group">
    <label >Numero de telefono:</label>
    <input class="form-control" type="number" minlength="10" maxlength="10"  name="numero"  required>
     </div>
     
    <div class="form-group">
    <label >Tipo:</label>
	<input class="form-control" type="text" name="tipo" required pattern="[A-Za-z]+" required>
	</div>
	
	<div class="form-group">
	<label >Operadora:</label>
    <input class="form-control" type="text" name="operadora" required pattern="[A-Za-z]+" required>
    </div>
    
    <input  type="hidden" name="cedu" value="${sessionScope.variableSession}">
    <input  type="hidden" name="codigoo" value=<%= accountId %>>
  
<input  class="btn btn-info btn-block" type="submit" value="Enviar">

</form>
</div>
<script src="https://code.jquery.com/jquery-3.4.1.slim.min.js" integrity="sha384-J6qa4849blE2+poT4WnyKhv5vZF5SrPo0iEjwBvKU7imGFAV0wwj1yYfoRSJoZ+n" crossorigin="anonymous"></script>
<script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.0/dist/umd/popper.min.js" integrity="sha384-Q6E9RHvbIyZFJoft+2mJbHaEWldlvI9IOYy5n3zV9zzTtmI3UksdQRVvoxMfooAo" crossorigin="anonymous"></script>
<script src="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/js/bootstrap.min.js" integrity="sha384-wfSDF2E50Y2D1uUdj0O3uMBJnjuUD4Ih7YwaYd1iqfktj0Uod8GCExl3Og8ifwB6" crossorigin="anonymous"></script>

</body>
</html>