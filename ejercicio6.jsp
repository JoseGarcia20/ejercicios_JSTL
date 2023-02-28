<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Ejercicio 5</title>

    <link rel="stylesheet" href="./css/estilos.css">
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3" crossorigin="anonymous">

    <link rel="preconnect" href="https://fonts.googleapis.com">
    <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
    <link href="https://fonts.googleapis.com/css2?family=Libre+Baskerville:wght@700&family=Source+Serif+Pro&display=swap" rel="stylesheet">
</head>

<body class="container d-flex flex-column justify-content-center align-items-center">

    <main class="d-flex justify-content-center flex-column align-items-center p-3 m-3">

        <h1>Ejercicio 6</h1>
        <h2>Pagina de prueba del uso de forEach</h2>
        <br>

        <c:forEach begin="1" end="24" step="2" var="hour" varStatus="status">
        <p><c:out value="${hour}"/>

        <c:if test="${status.first}">
            <strong>(Estoy en uno)</strong>
        </c:if>

        <c:if test="${status.count == 5}">
            <strong>(Estoy en la iteracion numero 5)</strong>
        </c:if>
        </p>
        </c:forEach>

    </main> 

    <div><br><a href="index.jsp" class="btn btn-dark">Volver</a></div>
    
</body>

</html>