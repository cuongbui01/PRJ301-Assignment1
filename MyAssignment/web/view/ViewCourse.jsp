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


            .A {
                background-color: orange;
            }
            .B {
                margin-left: 10%;
                margin-top: 10%;
            }
            

        </style>
    <body>
        <div class="B">
        <h2>
            Select a course, then a group ...</h2>
        <a href="Login">Home</a> <br>

        <table>
            

                <tr>
                    <th class="A">Campus</th>
                    <th class="A">Course</th>
                    <th class="A">Group Student</th>
                </tr>
                <td style="vertical-align: top">FU-HL</td>




                <td style="vertical-align: top">
                    <c:forEach var="s" items="${subjectlist}">
                        <a href="GroupController?id=${s.getSubid()}">${s.getSubname()}</a> </br>
                    </c:forEach>
                </td>

                <td style="vertical-align: top">
                    <c:forEach items="${requestScope.groups}" var="g">                     
                        <a href="ListStudentController?gid=${g.getGid()}">${g.getGname()}</a>
                    </c:forEach>

                </td>


            

        </table>
</div>

    </body>
</html>
