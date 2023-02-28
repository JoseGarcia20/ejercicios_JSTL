<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Ejercicio 7</title>

    <link rel="stylesheet" href="./css/estilos.css">
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3" crossorigin="anonymous">

    <link rel="preconnect" href="https://fonts.googleapis.com">
    <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
    <link href="https://fonts.googleapis.com/css2?family=Libre+Baskerville:wght@700&family=Source+Serif+Pro&display=swap" rel="stylesheet">
</head>

<body class="container d-flex flex-column justify-content-center align-items-center">

    <main class="d-flex justify-content-center flex-column align-items-center p-3 m-3">

        <h1>Formulario</h1>
        <h2>Ejercicio con forTokens Demno</h2>
        <br>

        <form role="form" name="forTokensForm" action="proceso7.jsp" method="POST">

            <div class="mb-3 form-floating">
                <input type="text" class="form-control" id="nombre" name="delimText" placeholder="Texto delimitador.">
                <label for="codigo" class="form-label p-3">Ingrese su texto.:</label>
            </div>

            <div class="mb-3 form-floating">
                <input type="text" class="form-control" id="nombre" name="delim" placeholder="Ingrese el delimitador:">
                <label for="codigo" class="form-label p-3">Introduzca el delimitador:</label>
            </div>

            <div class="d-flex mb-3">
                <input type="submit" class="form-control btn-outline-dark me-4" value="Tokenize">
                <input type="reset" class="form-control btn btn-dark" value="Borrar">
            </div>
        </form>
              
    </main> 
    
</body>

</html>