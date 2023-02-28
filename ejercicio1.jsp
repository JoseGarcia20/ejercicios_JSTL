<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="x" uri="http://java.sun.com/jsp/jstl/xml" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %> 
<%@ taglib prefix="sql" uri="http://java.sun.com/jsp/jstl/sql" %>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Ejercicio 1</title>

    <link rel="stylesheet" href="./css/estilos.css">
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3" crossorigin="anonymous">

    <link rel="preconnect" href="https://fonts.googleapis.com">
    <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
    <link href="https://fonts.googleapis.com/css2?family=Libre+Baskerville:wght@700&family=Source+Serif+Pro&display=swap" rel="stylesheet">
</head>

<body class="container d-flex flex-column justify-content-center align-items-center">

    <main class="d-flex justify-content-center flex-column align-items-center p-3 m-3">

        <h1>Ejercicio 1</h1>
        <h2>Mostrar cadena de caracteres.</h2>

        <div class="d-flex justify-content-center flex-column align-items-center p-3 m-3">
            <div class="row">&nbsp;</div>

            <div class="panel panel-primary">
                <div class="panel-heading">Primer ejemplo con JSTL</div>

                <div class="panel-body">
                    <p>Cadena de caracteres: <strong> <c:out value="1+2+3"/> </strong> </p>
                    <p>Suma de valores: <strong><c:out value="${1+2+3}"/></strong></p>
                </div>
            </div>
        </div>

    </main> 
    
</body>

</html>
