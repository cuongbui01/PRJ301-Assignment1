<%-- 
    Document   : list
    Created on : Jun 9, 2022, 8:26:21 PM
    Author     : Cuong Bui
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
    
        <form action="ListController" method ="GET">
              <table>
                <tr>
                    <td>id</td>
                    <td>name</td>
                    <td>gender</td>
                    <td>dob</td>
                    <td>adress</td>
                    <td>phone</td>
                </tr>
                <c:forEach items="${requestScope.student}" var="e">
                    <tr>
                        <td>${e.id}</td>
                        <td>${e.name}</td>
                        <td>${e.gender}</td>
                        <td>${e.dob}</td>
                        <td>${e.adress}</td>
                        <td>${e.phone}</td>
                    </tr>  
                </c:forEach>
            </table>
    </form>
    </body>
</html>
