<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
 
<c:set var="variableDePagina" scope="page"> Esta informacion se guarda en la pagina</c:set>
<c:set var="variableDeSesion" scope="session"> Esta informacion se guarda en la sesion</c:set>
<c:set var="variableDeAplicacion" scope="application"> Esta informacion se guarda en la aplicacion</c:set>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Set2</title>

    <link rel="stylesheet" href="./css/estilos.css">
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3" crossorigin="anonymous">

    <link rel="preconnect" href="https://fonts.googleapis.com">
    <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
    <link href="https://fonts.googleapis.com/css2?family=Libre+Baskerville:wght@700&family=Source+Serif+Pro&display=swap" rel="stylesheet">

</head>

<body class="container d-flex flex-column justify-content-center align-items-center">

    <main class="d-flex justify-content-center flex-column align-items-center p-3 m-3 border border-dark">

        <h1>Uso de etiqueta Set.</h1>
        
        <div class="d-flex flex-column p-5 g-3">
            <p>${variableDePagina}</p>
            <p>${variableDeSesion}</p>
            <p>${variableDeAplicacion}</p>
        </div>
        <br>
        <div><br><a href="index.jsp" class="btn btn-dark">Volver</a></div>

    </main>

</body>

</html>



