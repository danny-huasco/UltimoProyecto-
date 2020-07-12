<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>      
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>  

<!doctype html>
<html lang="en">
  <head>
    <!-- Required meta tags -->
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">

    <!-- Bootstrap CSS JS-->
    <spring:url value="/resources/css/bootstrap.min.css" var="bootstrapCSS" />
    <spring:url value="/resources/js/jquery-3.5.1.min.js" var="jqueryJS" />
    
    <link href="${bootstrapCSS}" rel="stylesheet" />
    <script src="${jqueryJS}"></script>
    <title>Editar Visita</title>
  </head>
  <body>
    <div class="jumbotron">
        <header class="text-center">
            <h2>Editar Visita</h2>
        </header>
    </div> 
     <form:form method="post" action="/UltimoProyectoSpring/editsavevisita">
      
      
      <div class="container">
      <div class="row">
              <label class="col-4">  Direcci�n :</label>
              <div class="input-group-prepend">
                <span class="input-group-text" id="basic-addon1"><b>></b></span>
              </div>
              <form:input  class="col-6 input-group" path="direccion"/>
          </div>
          <br><br>
          
          
          <div class="row">
              <label class="col-4">  Ciudad:</label>
              <div class="input-group-prepend">
                <span class="input-group-text" id="basic-addon1"><b>></b></span>
              </div>
              <form:input  class="col-6 input-group" path="ciudad"/>
          </div>
          <br><br>
          
          
          <div class="row">
              <label class="col-4">  Fecha:</label>
              <div class="input-group-prepend">
                <span class="input-group-text" id="basic-addon1"><b>></b></span>
              </div>
              <form:input  class="col-6 input-group" path="fecha"/>
          </div>
          <br><br>
          
          
          
          <div class="row">
              <label class="col-4">Resumen:</label>
              <div class="input-group-prepend">
                <span class="input-group-text" id="basic-addon1"><b>></b></span>
              </div>
              <form:input class="col-6 input-group" path="resumen"/>
          </div>
          <br><br>
          
          
          
          <div class="row">
              <label class="col-4">  Observaciones :</label>
              <div class="input-group-prepend">
                <span class="input-group-text" id="basic-addon1"><b>></b></span>
              </div>
              <form:input class="col-6 input-group" path="observaciones"/>
          </div>
          <br><br>
          
            <div class="row">
              <label class="col-4">  Cliente ID :</label>
              <div class="input-group-prepend">
                <span class="input-group-text" id="basic-addon1"><b>></b></span>
              </div>
              <form:input class="col-6 input-group" path="cliente_id"/>
          </div>
          <br><br>
          
            <div class="row">
              <label class="col-4">  Empleado ID :</label>
              <div class="input-group-prepend">
                <span class="input-group-text" id="basic-addon1"><b>></b></span>
              </div>
              <form:input class="col-6 input-group" path="empleado_idempleado"/>
          </div>
          <br><br>
    
    
    
   
           <c:if test="${ccmensaje != null}">
					<h3><c:out value="${ccmensaje}"></c:out></h3>
				</c:if>
          <br><br><br>
          
          <div class="row">
               <div class="container" style="max-width:55%">
               
               <input type="submit" class="btn btn-warning col-4" value="Editar y Guardar" >
            	<form:hidden path="idvisita"/>
               </div>
           </div>          
        </div>
      </form:form> 
      <div class="container" style="height: 50px;"></div>
    
    <!-- Optional JavaScript -->
    <!-- jQuery first, then Popper.js, then Bootstrap JS -->
    <spring:url value="/resources/js/jquery-3.5.1.min.js" var="jqueryJS" />
    <spring:url value="/resources/js/popper.min.js" var="popperJS"/>
    <spring:url value="/resources/js/bootstrap.min.js" var="bootstrapJS" />
    
    <script src="${jqueryJS}"></script>
    <script src="${popperJS}"></script>
    <script src="${bootstrapJS}"></script>
  </body>

</html>