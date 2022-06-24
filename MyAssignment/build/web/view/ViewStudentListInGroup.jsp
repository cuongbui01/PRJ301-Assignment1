<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%-- 
    Document   : ViewStudentListInGroup
    Created on : Jun 19, 2022, 1:58:10 AM
    Author     : Cuong Bui
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <style>
        table, th, td {
            border:1px solid black;
        }

        .a{
            background-color: #6b90da;
            width: 120px;
        }
        .A{
            margin-left: 10px;
       
        } 
        img{
            width: 40px;
            height: 40px;
            }
    </style>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>     
    </head>

    <body>
        <%
           int count = (Integer)request.getAttribute("count");
        %>
        <table class="A" border="1">
            <thead>
                <tr>
                    <th class="a">Index</th>
                    <th class="a">RollNumber</th>
                    <th class="a">StudentName</th>
                    <th class="a">a</th>
                    <th class="a">b</th>
                    <th class="a">c</th>
                </tr>
            </thead>
            <tbody>
                <c:forEach var="s" items="${studentList}">

                    <tr>
                        <td><%=count++%></td>
                        <td>${s.getRollnumber()}</td>
                        <td>${s.getName()}</td>
                        <td>${s.isGender()}</td>
                        <td>${s.getDob()}</td>
                        <td class="c">
                            <img src="${s.getImg()}" alt=""/>

                        </td>
                    </tr></c:forEach>
            </tbody>
        </table>

    </body>
</html>
