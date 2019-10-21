<%-- 
    Document   : resultados
    Created on : Oct 20, 2019, 7:47:30 PM
    Author     : Jorge Alejandro
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Resultados</title>
    </head>
    <body>
        <h1>resultados!</h1>
        <h3> Peso en Kilos: <%= getServletContext().getAttribute("peso") %></h3>
        <h3> Altura en Metros: <%= getServletContext().getAttribute("altura") %></h3>

        <h3> Metros²: <%= getServletContext().getAttribute("alturaCuadrado") %></h3>

        <h3> IMC: <%= getServletContext().getAttribute("resultado") %></h3>

    </body>
</html>

