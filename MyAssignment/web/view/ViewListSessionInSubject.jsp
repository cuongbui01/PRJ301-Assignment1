<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%-- 
    Document   : ViewListSessionInSubject
    Created on : Jul 12, 2022, 9:05:44 PM
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
        <h1>View List Session In Subject</h1>
        <table border="1">
            <thead>
                <tr>
                    <th>Class</th>
                    <th>Subject</th>
                    <th>Slot</th>
                    <th>Session Date</th>
                    <th></th>
                </tr>
            </thead>
            <tbody>
            <c:forEach var="t" items="${listTeaching}">
                 <tr>
                    <td>${group.getGroupCode()}</td>
                    <td>${subject.getSubjectCode()}</td>
                    <td>${t.getSlotName()}</td>
                    <td>${t.getTeachingDate()}</td>
                    <td><a href="/MyAssignment/TakeAttendance?teachingId=${t.getTeachingScheduleId()}">Take Attendance</td>
                </tr>
            </c:forEach>
               
            </tbody>
        </table>

    </body>
</html>
