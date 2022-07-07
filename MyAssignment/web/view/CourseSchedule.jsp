<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%-- 
    Document   : CourseSchedule
    Created on : Jul 6, 2022, 10:50:59 AM
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
        <h1>Groups Schedule</h1>
        ${listCourseView.size()}
        <table border="1">
            <thead>
                <tr>
                    <th>ID</th>
                    <th>Subject Name</th>
                    <th>Slot</th>
                    <td></td>
                    
                </tr>
            </thead>
            <tbody>
                
            <c:forEach var="lc" items="${listCourseView}">
                <tr>
                    <td>${lc.getTeachingScheduleId()}</td>
                    <td>${lc.getSubjectCode()}</td>
                    <td>${lc.getSlotName()}</td>
                    
                    <td><a href="/MyAssignment/ViewAttendanceController?subjectCode=${lc.getSubjectCode()}&studentId=${studentId}">View attendance</a></td>
                </tr>
            </c:forEach>
                
            </tbody>
        </table>

    </body>
</html>
