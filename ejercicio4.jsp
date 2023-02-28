<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Ejercicio 4</title>

    <link rel="stylesheet" href="./css/estilos.css">
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3" crossorigin="anonymous">

    <link rel="preconnect" href="https://fonts.googleapis.com">
    <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
    <link href="https://fonts.googleapis.com/css2?family=Libre+Baskerville:wght@700&family=Source+Serif+Pro&display=swap" rel="stylesheet">
</head>

<body class="container d-flex flex-column justify-content-center align-items-center">

    <main class="d-flex justify-content-center flex-column align-items-center p-3 m-3">

        <h1>Formulario</h1>
        <h2>Pagina de prueba del uso de choose, when y otherwise.</h2>
        <br>

        <form action="proceso4.jsp" method="post" class="d-flex flex-column p-5 g-3 needs-validation m-3">

            <div class="mb-3" class="form-select">
                <label for="lenguaje">Cual es su lenguaje de programacion favorito</label>
                <select name="lenguaje" class="form-select form-select-lg mb-1">
                    <option value="Java">JAVA</option>
                    <option value="C++">C++</option>
                    <option value="Perl">Perl</option>
                </select>
            </div>
            <br>
            <div class="d-flex mb-3">
                <input type="submit" class="form-control btn-outline-dark me-4" value="Enviar">
                <input type="reset" class="form-control btn btn-dark" value="Borrar">
            </div>
        </form>

    </main> 
    
</body>

</html>