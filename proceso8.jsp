<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/sql" prefix="sql" %>
<jsp:useBean id="cod" scope="page" class="sv.edu.udb.guia11.codigo"/>

<!DOCTYPE html>
<html lang="en">
    <head>
        <meta charset="UTF-8">
        <meta http-equiv="X-UA-Compatible" content="IE=edge">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <title>Resultado 8</title>

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

                <c:set var="nombre" value="${param.nombre}"/>
                <c:set var="apellido1" value="${param.apellido1}"/>
                <c:set var="apellido2" value="${param.apellido2}"/>
                <c:set var="edad" value="${param.edad}"/>


                <sql:query var="q1" dataSource="jdbc/mysql"> 
                    SELECT * from empleados
                </sql:query>

                <c:set var="nreg" value="${q1.rowCount}"/>
                <c:set target="${cod}" property="apellido1" value="${apellido1}"/>
                <c:set target="${cod}" property="apellido2" value="${apellido2}"/>
                <c:set target="${cod}" property="cantidadRegistros" value="${nreg}"/>
                <c:set var="codigoUsu" value="${cod.cod}"/>


                <div class="d-flex flex-column p-5 g-3">
                    <p>Nombre: <strong><c:out value="${nombre} " /></strong></p>
                    <p>Primer apellido: <strong><c:out value="${apellido1} " /></strong></p>
                    <p>Segundo apellido: <strong><c:out value="${apellido2} " /></strong></p>
                    <p>Edad: <strong><c:out value="${edad} " /></strong></p>
                    <p>Codigo: <strong><c:out value="${codigoUsu} " /></strong></p>

                </div>

                <sql:update var="insertar" dataSource="jdbc/mysql">
                    insert into empleados (id,nombres,apellido1,apellido2,edad) values (?,?,?,?,?)
                    <sql:param value="${codigoUsu}"/>
                    <sql:param value="${nombre}"/>
                    <sql:param value="${apellido1}"/>
                    <sql:param value="${apellido2}"/>
                    <sql:param value="${edad}"/>
                </sql:update>


                <sql:query var="q1" dataSource="jdbc/mysql"> 
                    SELECT * from empleados
                </sql:query>


                <div class="row col-md-6">
                    <table class="table table-striped table-bordered table-hover">
                        <thead>
                            <tr>
                                <th>Id</th>
                                <th>Nombres</th>
                                <th>Apellidos</th>
                                <th>Edad</th>
                            </tr>
                        </thead>
                        <tbody>
                            <c:forEach var="name" items="${q1.rows}">
                                <tr>
                                    <td><c:out value="${name.id}"/></td>
                                    <td><c:out value="${name.nombres}"/></td>
                                    <td><c:out value="${name.apellido1} ${name.apellido2}"/></td>
                                    <td><c:out value="${name.edad}"/></td>
                                </tr>
                            </c:forEach>
                        </tbody>
                    </table>
                </div>

            </div>
            <br>
            <div><br><a href="index.jsp" class="btn btn-dark">Volver</a></div>
        </main>

    </body>

</html>
