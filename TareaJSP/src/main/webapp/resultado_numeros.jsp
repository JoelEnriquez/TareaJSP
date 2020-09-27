<%-- 
    Document   : resultado_numeros
    Created on : 26/09/2020, 22:54:47
    Author     : Joel Enriquez
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <%@include file="head.html"%>
    <%@page import="Logica.Operaciones" %>

    <body>
        <%
            double numero1 = Double.parseDouble(request.getParameter("primer_numero"));
            double numero2 = Double.parseDouble(request.getParameter("segundo_numero"));
            Operaciones operaciones = new Operaciones(numero1, numero2);

            double resultado = 0;
            String binary1 = "";
            String binary2 = "";

            String eleccion = request.getParameter("boton");

            if (eleccion.equals("sumar")) {
                resultado = operaciones.sumarNumeros();
            } else if (eleccion.equals("multiplica")) {
                resultado = operaciones.multiplicarNumeros();
            } else if (eleccion.equals("mayor")) {
                resultado = operaciones.numeroMayor();
            } else if (eleccion.equals("potencia")) {
                resultado = operaciones.potenciaNumeros();
            } else if (eleccion.equals("binario")) {
                binary1 = operaciones.numeroBinario(numero1);
                binary2 = operaciones.numeroBinario(numero2);
            }
        %>
        <h2>Resultados</h2>
        
        <%if (resultado != 0) {%>
        <p><%=resultado%></p>
        <%} else {%>

        <p>Numero 1:<%=binary1%></p>
        <p>Numero 2:<%=binary2%></p>
        <%}%>

        <br/>
        <form action="index.jsp" method="POST">
            <input type="submit" value="Retornar">
        </form>

    </body>
</html>
