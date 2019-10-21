<%-- 
    Document   : index
    Created on : Oct 16, 2019, 8:07:17 PM
    Author     : Jorge Alejandro
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Inicio</title>
    </head>
    <body>
        <h1>Ingrese su informacion</h1>
        <form action="guardar" id="form" name="form" onsubmit="return esValido()">
            <label htmlFor="altura">
                Altura: <input type="number" name="altura" step="0.01"/> 
            </label>
            <label htmlFor="medidaAltura">
                <input type="radio" name="medidaAltura" value="metros"> Metros
                <input type="radio" name="medidaAltura" value="pies"> Pies<br>
            </label>
            <br />
            <br />
            <label htmlFor="peso">
                Peso: <input type="number" name="peso" step="0.01" /> 
            </label>
            <label htmlFor="medidaPeso">
                <input type="radio" name="medidaPeso" value="kilos"> Kilos            
                <input type="radio" name="medidaPeso" value="libras">Libras<br>            
            </label>                        
            <br />
            <br />
            
            <input type="submit" value="Calcular" />
        </form>
        <script>
            function esValido(e){
                var altura = document.forms["form"]["altura"].value;
                var medidaAltura = document.forms["form"]["medidaAltura"].value;
                var peso = document.forms["form"]["peso"].value;
                var medidaPeso = document.forms["form"]["medidaPeso"].value;
                var valido = true;
                if(!altura || !medidaAltura || !peso || !medidaPeso){
                    valido = false;
                }
                return valido;
            };
        </script>
    </body>
</html>
