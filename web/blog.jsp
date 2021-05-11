<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%-- 
    Document   : blog
    Created on : 09-may-2021, 18:52:47
    Author     : Jorge
--%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        
        <title>JSP Page</title>
    </head>
    <body>
        <style>
            *{
                font-family:sans-serif;
            }
        </style>
        <h3 style="text-align: right; margin-right:50px;">
            
               Administrador 
                <a href="login.jsp" >SALIR</a>
         </h3>   
        


        <h1 style="text-align: center;">BLOG DE SALUD</h1>
        <h3><a href="Controlador?action=add" style="margin-left: 50px">Nuevo Articulo</a></h3><br>
        <c:forEach var="item" items="${post}">

            <table style="margin-left: 50px; margin-right: 50px;text-align: left;">
                <tr>
                    <td>${item.fecha}</td>
                </tr>
                <tr>
                    <th><h2>${item.titulo}</h2></th>
                </tr>
                <tr>
                    <td>${item.contenido}</td>
                </tr>
                <tr style="text-align: right;">
        
                    <td><a href="Controlador?action=edit&id=${item.id}">Editar</a></td>
                    <td><a href="Controlador?action=delete&id=${item.id}" onclick="return(confirm('esta seguro de eliminar'))">Eliminar</a></td>
                </div
                </tr>

            </table>
            <hr>
            <br>
        </c:forEach>    
</body>
</html>
