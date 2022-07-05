<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%-- 
    Document   : ViewAttendance
    Created on : Jul 5, 2022, 1:54:08 PM
    Author     : 84969
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <h1>View Attendance</h1>
        <table border="1">
            <thead>
                <tr>
                    <th>Course</th>
                    <th>Date</th>
                    <th>Slot</th>
                    <th>Room</th>
                    <th>Lecturer</th>
                    <th>Group Name</th>
                    <th>Attendance Status</th>
                    <th>Lecture comment</th>
                </tr>
            </thead>
            <tbody>
            <c:forEach var="lav" items="${listAttendanceView}">
                <tr>
                    <td>${lav.getSubjectName()}- ${lav.getSubjectCode()}</td>
                    <td>${lav.getSessionDate()}</td>
                    <td>${lav.getSlotName()}</td>
                    <td>${lav.getRoomName()}</td>
                    <td>${lav.getLectureCode()}</td>
                    <td >${lav.getGroupName()}</td>
                    <td>${lav.getIsAbsent()==1?"Present":"Absent"}</td>
                    <td>${lav.getComment()=="null"?"":lav.getComment()}</td>
                </tr>
            </c:forEach>
                
            </tbody>
        </table>

    </body>
</html>
