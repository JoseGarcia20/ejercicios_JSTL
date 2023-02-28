<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Ejercicio 3</title>

    <link rel="stylesheet" href="./css/estilos.css">
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3" crossorigin="anonymous">

    <link rel="preconnect" href="https://fonts.googleapis.com">
    <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
    <link href="https://fonts.googleapis.com/css2?family=Libre+Baskerville:wght@700&family=Source+Serif+Pro&display=swap" rel="stylesheet">
</head>

<body class="container d-flex flex-column justify-content-center align-items-center">

    <main class="d-flex justify-content-center flex-column align-items-center p-3 m-3">

        <h1>Formulario De Persona</h1>
        <h2>Digitar datos de la persona.</h2>
        <br>
        <h3>Formulario:</h3>

        <form action="proceso3.jsp" method="post" class="d-flex flex-column p-5 g-3 needs-validation m-3">

            <div class="mb-3 form-floating">
                <input type="text" class="form-control" id="nombre" name="nombre" placeholder="Ingrese su nombre:">
                <label for="codigo" class="form-label p-3">Nombre:</label>
            </div>
            <div class="mb-3 form-floating">
                <input type="text" class="form-control" id="nombre" name="apellido1" placeholder="Primer Apellido">
                <label for="numero2" class="form-label p-3">Primer Apellido: </label>
            </div>
            <div class="mb-3 form-floating">
                <input type="text" class="form-control" id="edad" name="apellido2" placeholder="Segundo Apellido">
                <label for="numero2" class="form-label p-3">Segundo Apellido: </label>
            </div>
            <br>
            <div class="d-flex mb-3">
                <input type="submit" class="form-control btn-outline-dark me-4" value="Enviar">
                <input type="reset" class="form-control btn btn-dark" value="Borrar">
            </div>
        </form>

        <c:if test="${not empty param.error}">
        <div class="alert alert-danger">
            <strong>Error!!</strong>
            <c:out value="${param.error}"/>
            <br>
        </div>
        </c:if>


    </main> 
    
</body>

</html>