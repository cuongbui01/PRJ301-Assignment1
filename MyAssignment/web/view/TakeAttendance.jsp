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
        .table {
            width: 100%;
            margin-bottom: 1rem;
            color: #212529;

        }
        .table th,
        .table td {
            padding: 0.75rem;
            vertical-align: top;
            border-top: 1px solid #dee2e6;
        }
        .table thead th {
            vertical-align: bottom;
            border-bottom: 2px solid #dee2e6;
        }
        .table tbody + tbody {
            border-top: 2px solid #dee2e6;
        }
        .a {
            text-align: center;
        }
    </style>

    <body>
        <h1> FPT University Academic Portal </h1>
        <h2>Take Attendance for ${teacher.getLectureCode()}</h2>
        Course: ${sessionCourse.getSubjectCode()}- DATE TIME:${sessionCourse.getTeachingDate()}

        <table class="table">
            <thead>
                <tr>
                    <th class="a">Student Id</th>
                    <th class="a">Student Name</th>
                    <th class="a">Attendance</th>
                    <th class="a">Comment</th>
                </tr>
            </thead>
            <form  action="TakeAttendance" method="POST">
                <tbody>
                    <c:forEach var="a" items="${attendanceList}">

                        <tr>
                            <td><input type="text" name="studentId" value="${a.getStudent().getRollNumber()}" readonly="readonly" /></td>
                            <td>${a.getStudent().getFullName()}</td>
                            <td>
                                <span>          </span>
                                <c:if test="${a.getIsAbsent()==0}">
                                    <input type="radio" name="isAbsent" value="0" checked="checked" />Present
                                    <input type="radio" name="isAbsent" value="1" />Absent
                                </c:if>
                                <c:if test="${a.getIsAbsent()==1}">
                                    <input type="radio" name="isAbsent" value="1" checked="checked" />Absent 
                                    <input type="radio" name="isAbsent" value="1" />Present
                                </c:if>

                            </td>
                            <td><input type="text" name="comment" value="${a.getComment()}" /></td>
                        </tr>
                    </c:forEach>
                <input type="submit" value="Save" name="submit" /> <br> </br>
                </tbody>
        </table>
    </form>
</body>

</html>
