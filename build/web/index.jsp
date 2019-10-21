<%-- 
    Document   : index
    Created on : Oct 16, 2019, 8:07:17 PM
    Author     : admin
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <h1>Hello World!</h1>
        <form action="guardar" id="form" name="form" onsubmit="return isValidForm()">
            <label htmlFor="altura">
                Altura: <input type="number" name="altura" /> 
            </label>
            <label htmlFor="medidaAltura">
                <input type="radio" name="medidaAltura" value="metros"> Metros
                <input type="radio" name="medidaAltura" value="pies"> Pies<br>
            </label>
            <br />
            <br />
            <label htmlFor="peso">
                Peso: <input type="number" name="peso" /> 
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
            function isValidForm(e){
                var altura = document.forms["form"]["altura"].value;
                var medidaAltura = document.forms["form"]["medidaAltura"].value;
                var peso = document.forms["form"]["peso"].value;
                var medidaPeso = document.forms["form"]["medidaPeso"].value;
                var valido = true;
                if(!altura || !medidaAltura || !peso || !medidaPeso){
                    console.log(altura, medidaAltura, peso, medidaPeso);
                    valido = false;
                }
                return valido;
            };
        </script>
    </body>
</html>
