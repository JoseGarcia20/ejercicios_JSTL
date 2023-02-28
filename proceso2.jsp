<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Resultado 2</title>

    <link rel="stylesheet" href="./css/estilos.css">
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3" crossorigin="anonymous">

    <link rel="preconnect" href="https://fonts.googleapis.com">
    <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
    <link href="https://fonts.googleapis.com/css2?family=Libre+Baskerville:wght@700&family=Source+Serif+Pro&display=swap" rel="stylesheet">
</head>

<body class="container d-flex flex-column justify-content-center align-items-center">

    <main class="d-flex justify-content-center flex-column align-items-center p-3 m-3 border border-dark">

        <h1>Datos Registrados</h1>
        
        <div class="d-flex flex-column p-5 g-3">
            <p>Nombre: <strong> <c:out value="${param.nombre}"/> </strong> </p>
            <p>Primer Apellido: <strong> <c:out value="${param.apellido1}"/> </strong> </p>
            <p>Segundo Apellido: <strong> <c:out value="${param.apellido2}"/> </strong> </p>
        </div>
        <br>
        <div><br><a href="index.jsp" class="btn btn-dark">Volver</a></div>
    </main>

</body>

</html>
