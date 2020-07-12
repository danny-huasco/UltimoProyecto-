<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>      
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>  

<!DOCTYPE html>
<html lang="es">
	<head>		
		<meta charset="ISO-8859-1">
		<meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
		<title>Inicio</title>
		
		<spring:url value="/resources/css/bootstrap.min.css" var="bootstrapCSS" />
		<spring:url value="/resources/css/estilos.css" var="estilosCSS" />
	
		<link href="${bootstrapCSS}" rel="stylesheet" />
		<link href="${estilosCSS}" rel="stylesheet" />
	</head>
<body>
<div class="container-md text-center" >
  <h1 class="display-4">Pagina Inicio </h1>
  <p class="lead">�Qu� acci�n deseas realizar?</p>
  <hr class="my-4">
</div>

<div class= "container" id="cont">
<h2>Cliente</h2>

	<div class="list-group text-center">
	<a href="asesoriaform" class="list-group-item list-group-item-action list-group-item-light">Solicitar Asesoria </a>
 	<a href="accidenteform" class="list-group-item list-group-item-action list-group-item-dark"> Reportar Accidente</a>
	</div>
</div>

<br/>
<br/>

<div class= "container" id="cont">

	<h2>Profesional</h2>

	<div class="list-group text-center">
	<a href="viewcli" class="list-group-item list-group-item-action list-group-item-light">Administrar Clientes</a>
	<a href="viewvisita" class="list-group-item list-group-item-action list-group-item-light">Administrar Visitas</a>
	<a href="viewchequeo" class="list-group-item list-group-item-action list-group-item-light">Administrar Chequeos</a>
	
	</div>
</div>

	<!-- jQuery first, then Popper.js, then Bootstrap JS -->   
	<spring:url value="/resources/js/jquery-3.5.1.min.js" var="jqueryJS" />
	<spring:url value="/resources/js/bootstrap.bundle.min.js" var="bootstrapbJS" />
	<spring:url value="/resources/js/bootstrap.min.js" var="bootstrapJS" />
    <script src="${jqueryJS}"></script>
    <script src="${bootstrapbJS}"></script>
    <script src="${bootstrapJS}"></script>

</body>
</html>