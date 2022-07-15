<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<!--
Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
Click nbfs://nbhost/SystemFileSystem/Templates/JSP_Servlet/Html.html to edit this template
-->
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<html>
    <head>
        <title>TODO supply a title</title>
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
    </head>
    <style>
        .A {
            background-color: orange;
        }
        .m{
            background-color: Cyan;

        }
    </style>

    <body>
        <h1> FPT University Academic Portal </h1>
        <h2>Take Attendance for ${teacher.getLectureCode()}</h2>
        Course: ${sessionCourse.getSubjectCode()}- DATE TIME:${sessionCourse.getTeachingDate()}
        <form  action="TakeAttendance" method="POST">
            <table border="1" style="width:100%">
                <thead>
                    <tr>
                        <th class="A">NO.</th>
                        <th class="A">Student Id</th>
                        <th class="A">Student Name</th>
                        <th class="A">Attendance</th>
                        <th class="A">Comment</th>
                    </tr>
                </thead>
                <tbody>
                    <tr>
                        <c:forEach var="a" items="${attendanceList}">
                            <th>1++;</th>
                            <th><input type="text" name="studentId" value="${a.getStudent().getRollNumber()}" readonly="readonly" /></th>
                            <th>${a.getStudent().getFullName()}</th>
                            <th><input type="radio" name="isAbsent" value="1" ${a.getIsAbsent()==1?"selected":""}/> Absent
                                <input type="radio" name="isAbsent" value="0" ${a.getIsAbsent()==0?"selected":""}/> Present  </th>
                            <th><input type="text" name="comment" value="${a.getComment()}" /></th>
                        </tr>
                    </c:forEach>
                <input type="submit" value="Save" name="submit" /> <br> </br>
                </tbody>
            </table>
        </form>
    </body>

</html>
