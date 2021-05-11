<%-- 
    Document   : login
    Created on : 06-may-2021, 19:57:47
    Author     : Jorge
--%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <div style="padding:20px; alignment-adjust: central">

        <h1>Login</h1>
        <c:if test="${bandera==0}"><p style="color: red">Error en usuario o password<p></c:if>
        <form action="Prueba" method="post">
            <table>
                <tr>
                    <th>Usuario</th>
                    <td><input type="text" name="usuario" size="15" /></td>
                </tr>
                <tr>
                    <th>Password</th>
                    <td><input type="password" name="password" size="15" /></td>
                </tr>
                <tr>
                    <td></td>
                    <td><input type="submit" value="Ingresar" /></td>
                </tr>
            </table>
        </form>    
        </div>
    </body>
</html>
