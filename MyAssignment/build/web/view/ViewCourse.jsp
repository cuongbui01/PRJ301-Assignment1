<%-- 
    Document   : OtherListStudent
    Created on : Jun 13, 2022, 5:58:48 PM
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
        <style>
            table, th, td {
                border:1px solid black;

            }
            
            
            .A {
                background-color: #6b90da;
            }


        </style>
    <body>

        <h2>
            Select a course, then a group ...</h2>
        <a href="ViewTimeTable.jsp">Home</a>

        <table border="1">
            <thead>
                <tr>
                    <th class="A">Campus</th>
                    <th class="A">Course</th>
                    <th class="A">Group Student</th>
                </tr>
            </thead>
            <tbody>
                <c:forEach var="s" items="${subjectlist}">
                    <tr>
                    <td>FU-HL</td>
                    <td><a href="GroupController?id=${s.getSubid()}">${s.getSubname()}</a> </td>
                    
                </tr>
                </c:forEach>
            </tbody>
        </table>

        
    </body>
</html>
