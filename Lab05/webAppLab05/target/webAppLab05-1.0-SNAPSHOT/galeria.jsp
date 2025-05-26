<%-- 
    Document   : galeria
    Created on : 25 may 2025, 12:21:11 p.m.
    Author     : Elias Zaracho
--%>

<%@page import="java.io.*"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Galeria de Imagenes</title>
    <style>
        img {
            width: 200px;
            margin: 10px;
            border: 2px solid #ccc;
            border-radius: 10px;
        }
    </style>
</head>
<body>
    <h1>galería de imagenes</h1>

    <%
        String path = application.getRealPath("/imagenes");
        File folder = new File(path);
        if (folder.exists()) {
            File[] files = folder.listFiles();
            for (File file : files) {
                if (file.isFile() && (file.getName().endsWith(".jpg") || file.getName().endsWith(".png"))) {
    %>
                    <img src="imagenes/<%= file.getName() %>" alt="imagen">
    <%
                }
            }
        } else {
            out.println("<p>No se encontró el directorio 'imagenes'</p>");
        }
    %>
</body>
</html>

