<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Resultado 4</title>

    <link rel="stylesheet" href="./css/estilos.css">
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3" crossorigin="anonymous">

    <link rel="preconnect" href="https://fonts.googleapis.com">
    <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
    <link href="https://fonts.googleapis.com/css2?family=Libre+Baskerville:wght@700&family=Source+Serif+Pro&display=swap" rel="stylesheet">
</head>

<body class="container d-flex flex-column justify-content-center align-items-center">

    <main class="d-flex justify-content-center flex-column align-items-center p-3 m-3 border border-dark">

        <h1>Lenguaje de programacion</h1>
        
        <div class="d-flex flex-column p-5 g-3">
            <c:choose>
            <c:when test="${param.lenguaje == 'Java'}">
            <p>El rey de los lenguajes orientados a objetos.</p>
            </c:when>
            <c:when test="${param.lenguaje == 'C++'}">
            <p>Ideal para aprender.</p>
            </c:when>
            <c:when test="${param.lenguaje == 'Perl'}">
            <p>Lenguaje de scripting mas portente.</p>
            </c:when>
            <c:otherwise>
            <p>No se selecciono ninguno</p>
            </c:otherwise>
            </c:choose>
        </div>
        <br>
        <div><br><a href="index.jsp" class="btn btn-dark">Volver</a></div>
    </main>

</body>

</html>
