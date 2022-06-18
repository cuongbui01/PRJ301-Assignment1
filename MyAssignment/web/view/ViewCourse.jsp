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
            .a{
                margin-left: 20px;
            }
            .A {
                background-color: #6b90da;
            }


        </style>
    <body>

        <h2>
            Select a course, then a group ...</h2>
        <a href="ViewTimeTable.jsp">Back</a>


        <table style="width:100%">
            <tr>
                <td class="A">CAMPUS</td>
                <td class="A">COURSE</td>
                <td class="A">GROUP</td>
            </tr>



            <tr>
                <td>FU-HL</td>
<td>
                <c:forEach items="${requestScope.subjects}" var="s">

                    <a href="ViewStudentListInGroup.jsp">${s.subname}</a>
                    (${s.subcode})</br>
                    

                </c:forEach></td>
            </tr> 



<!--            <td>
                                    <div class="a">
                                    <a href="ViewStudentListInGroup.jsp">SE1620 </a>
                                    <a href="ViewStudentListInGroup.jsp">SE1621 </a>
                                    <a href="ViewStudentListInGroup.jsp">SE1622 </a>
                                    <br> 
                                    <a href="ViewStudentListInGroup.jsp">SE1623 </a>
                                    <a href="ViewStudentListInGroup.jsp">SE1624 </a>
                                    <a href="ViewStudentListInGroup.jsp">SE1626 </a>
                                    </br> </div>
            </td>-->

        </table> 

    </body>
</html>
