<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%-- 
    Document   : TakeAttendanceOk
    Created on : Jul 15, 2022, 5:15:07 PM
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
        <h1>Hello World!</h1>
        <table border="1">
            <thead>
                <tr>
                    <th>StudentId</th>
                    <th>Student Name</th>
                    <th>Student Code</th>
                    <th>Attendance</th>
                    <th>Comment</th>
                </tr>
            </thead>
            <tbody>
            <c:forEach var="s" items="${attendanceList}">
                <tr>
                    <td>Id</td>
                    <td>name</td>
                    <td>ok</td>
                    <td><input type="radio" name="isAbsent" value="" checked="checked" />Present</td>
                    <td>Comment</td>
                </tr>
            </c:forEach>
                
            </tbody>
        </table>

    </body>
</html>
