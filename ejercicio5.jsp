<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%!int valor=0;%><%--Declarando variable tipo int--%>

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

        <h1>Formulario</h1>
        <h2>Pagina de prueba del uso de choose, when y otherwise.</h2>
        <h3>La pagina solo recibira el valor de '1234'</h3>
        <br>

        <c:catch var="error01">
        <% valor = Integer.parseInt(request.getParameter("parametro")); %>
        </c:catch>

        <c:if test="${not empty error01}">
        <div class="alert alert-danger">
            <strong>Se produjo un error:</strong>${error01}
        </div>
        <br>
        </c:if>

        <c:if test="${valor !=0 && empty error01}">
        <div class="alert alert-info">
            <strong>Valor recibido: <%out.println(valor);%></strong>
        </div>
        <br>
        </c:if>

        <div class="d-flex p-2 g-3 needs-validation m-3">

            <form role="form" class="d-flex flex-column p-2 g-3 needs-validation m-3">
                <input type="hidden" name="parametro" value="prueba"/>
                <input class="form-control btn-outline-dark me-4" type="submit" class="btn btn-info" value="Enviar 'prueba'"/>
            </form>
    
            <form role="form" class="d-flex flex-column p-2 g-3 needs-validation m-3">
                <input type="hidden" name="parametro" value="1234"/>
                <input class="form-control btn-outline-dark me-4" type="submit" class="btn btn-info" value="Enviar '1234'"/>
            </form>
    
            <form role="form" class="d-flex flex-column p-2 g-3 needs-validation m-3">
                <input class="form-control btn-outline-dark me-4" type="submit" class="btn btn-info" value="No enviar el parametro"/>
            </form>
        </div>

        <div><br><a href="index.jsp" class="btn btn-dark">Volver</a></div>

    </main> 
    
</body>

</html>