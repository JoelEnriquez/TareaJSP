<%-- 
    Document   : IngresoNumeros
    Created on : 26/09/2020, 17:37:20
    Author     : Joel Enriquez
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <%@include file="head.html"%>
    <body>
        <h1>Ingreso de Datos</h1>

        <form method="POST" action="resultado_numeros.jsp">
            <h2>Ingrese primer numero</h2>
            <input type="number" name="primer_numero" required>
            
            <h2>Ingrese segundo numero</h2>
            <input type="number" name="segundo_numero" required>
            
            <br/>
            
            <ul>
                <li><button type="submit" name="boton" value="sumar">Sumar</button></li>
                <li><button type="submit" name="boton" value="multiplica">Multiplicar</button></li>
                <li><button type="submit" name="boton" value="mayor">Obtener el Mayor</button></li>
                <li><button type="submit" name="boton" value="potencia">Obtener Potencia</button></li>
                <li><button type="submit" name="boton" value="binario">Mostrar Binarios</button></li>
            </ul>
            
        </form>
    </body>
</html>
