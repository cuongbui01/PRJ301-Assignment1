<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%-- 
    Document   : ViewGroupStudent
    Created on : Jun 18, 2022, 10:48:42 PM
    Author     : Cuong Bui
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
            table, th, td {
                border:1px solid black;

            }
            .a{
                margin-bottom: 20px;
            }

            .A {
                background-color: #6b90da;
            }
            


        </style>
        <h2>
            Select a course, then a group ...</h2>
        <div class="a">
            <a href="ViewTimeTable.jsp">Home</a>
        </div>

        <table  border="1">
            <thead>
                <tr>
                    <th class="A">Campus</th>
                    <th class="A">Course</th>
                    <th class="A">Group Student</th>
                </tr>
            </thead>
            <tbody>
                <c:forEach items="${requestScope.groups}" var="g">
                    <tr>
                        <td>FU-HL</td>
                        <td>${g.getSub().getSubname()}</a> </td>
                        <td> <a href="ListStudentController?gid=${g.getGid()}">${g.getGname()}</a></td>
                    </tr>
                </c:forEach>
            </tbody>
        </table>




    </body>
</html>
