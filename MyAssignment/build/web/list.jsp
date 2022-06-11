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
    <style>
        img {
            height: 100px;
            width: 100px;
        }
    </style>
    <body>

        <form action="ListController" method ="GET">
            <table>
                <tr>
                    <td>sid</td>
                    <td>rollnumber</td>
                    <td>sname</td>
                    <td>sgender</td>
                    <td>sdob</td>
                    <td>simg</td>
                    <td>sphone</td>
                </tr>
                <c:forEach items="${requestScope.student}" var="e">
                    <tr>
                        <td>${e.id}</td>
                        <td>${e.rollnumber}</td>
                        <td>${e.name}</td>
                        <td>${e.gender}</td>
                        <td>${e.dob}</td>
                        <td>
                            <img src="${e.img}" alt=""/>
                            
                       </td>
                        <td>${e.phone}</td>
                    </tr>  
                </c:forEach>

            </table>
        </form>
    </body>
</html>
