<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%-- 
    Document   : nuevo_post
    Created on : 09-may-2021, 20:15:46
    Author     : Jorge
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
        <style>
            *{
                margin: 20px;
            }
            body{
                
                font-family:sans-serif;
            }
        </style>
    <body>
        
        <h1>
        <c:if test="${post.id == 0}">Nuevo </c:if>
        <c:if test="${post.id != 0}">Editar</c:if>
        posts
        
        </h1>
            <form action="Controlador" method="post">
                <input type="hidden" name="id" value="${post.id}"/>
                <table border="1">
                    <tr>
                        <td><h3>Fecha</h3></td>
                        <td><input type="date" name="fecha" value="${post.fecha}"/></td>
                    </tr>
                    <tr>
                        <td><h3>Titulo</h3></td>
                        
                        <td style="width: 400px;alignment-adjust: auto"><input type="text" name="titulo" size="150" value="${post.titulo}"/></td>
                    </tr>
                    
                    <tr>
                        <td><h3>Contenido</h3></td>
                        <td style="width: 400px;"><textarea name="contenido" rows="10" cols="80">
                                ${post.contenido}
                            </textarea></td>
                    </tr>
                    <tr>
                        <td></td>
                        <td><input type="submit"/></td>
                    </tr>
                </table>
            </form>

    </body>
</html>
