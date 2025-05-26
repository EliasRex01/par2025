<%-- 
    Document   : index
    Created on : 25 may 2025, 12:21:11 p.m.
    Author     : Elias Zaracho
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>JSP Page - Ejemplo Lab05 - 2024</title>
</head>
<body>
    <h1>Ejemplos de expresiones</h1>

    <%-- Mostrar la fecha y hora actual --%>
    <p><strong>fecha y hora:</strong> <%= new java.util.Date().toString() %></p>

    <%-- Convertir a mayusculas un string --%>
    <p><strong>texto en mayusculas:</strong> 
        <%= "Texto a mayúsculas".toUpperCase() %></p>

    <%-- Resultado de una expresion aritmetica --%>
    <p><strong>resultado de (5+2)/3:</strong> <%= (5+2)/(float)3 %></p>

    <%-- Generar un numero aleatorio entre 0 y 99 --%>
    <p><strong>numero aleatorio:</strong> 
        <%= new java.util.Random().nextInt(100) %></p>
</body>
</html>
