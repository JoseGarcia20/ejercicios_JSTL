<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>

<!DOCTYPE html>
<html lang="en">
    <head>
        <meta charset="UTF-8">
        <meta http-equiv="X-UA-Compatible" content="IE=edge">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <title>Ejercicio 8</title>

        <link rel="stylesheet" href="./css/estilos.css">
        <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3" crossorigin="anonymous">

        <link rel="preconnect" href="https://fonts.googleapis.com">
        <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
        <link href="https://fonts.googleapis.com/css2?family=Libre+Baskerville:wght@700&family=Source+Serif+Pro&display=swap" rel="stylesheet">
    </head>

    <body class="container d-flex flex-column justify-content-center align-items-center">

        <main class="d-flex justify-content-center flex-column align-items-center p-3 m-3">

            <h1><fmt:message key="label.Datos"/></h1>


            <form name="persona" action="proceso9.jsp" method="post" class="d-flex flex-column p-5 g-3 needs-validation m-3">

                <table border="0">
                    <tbody>
                        <tr>
                            <td><fmt:message key="label.nombre"/></td>
                            <td><input class="form-control" type="text" name="nombre" value="" /></td>
                        </tr>
                        <tr class="odd">
                            <td><fmt:message key="label.apellido1"/></td>
                            <td><input class="form-control" type="text" name="apellido1" value="" /></td>
                        </tr>
                        <tr>
                            <td><fmt:message key="label.apellido2"/></td>
                            <td><input class="form-control" type="text" name="apellido2" value="" /></td>
                        </tr>
                        <tr class="odd">
                            <td><fmt:message key="label.edad"/></td>
                            <td><input class="form-control" type="text" name="edad" value="" /></td>
                        </tr>
                        <tr>
                            <td colspan="2"><input type="submit" class="form-control btn-outline-dark me-4" value="<fmt:message key="label.ingresar"/>"></td>
                        </tr>
                    </tbody>
                </table>
            </form>
            <br>
            <center>
                <jsp:useBean id="now" class="java.util.Date" />
                <fmt:formatDate value="${now}" pattern="dd 'de' MMMM 'de' yyyy, hh:mm a." />
            </center>
        </main> 

    </body>

</html>

