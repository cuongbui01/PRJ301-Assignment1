<%-- 
    Document   : home
    Created on : Jul 6, 2022, 10:55:57 AM
    Author     : Cuong Bui
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <style>
        table, th, td {
            border:1px solid black;
        }
        .a {
            padding-left: 40px;
        }
        .A {
            background-color: #ef8d01;
        }
    </style>
    <body>

        <h2>Welcome To FAP FPT UNIVERSITY </h2>
        <h4>Activity by: ${student.getFullName()} - ${student.getRollNumber()} - ${group.groupCode}</h4>
        <table style="width:100%">
            <tr>
                <th class="A">Academic Information</th>               
            </tr>
           
            <tr>
                <td class="a"><a href="/MyAssignment/CourseSchedulesController?studentId=${student.getStudentId()}">Attendance report (Báo cáo điểm danh)</a></td>

            </tr>
            <tr>
                <td class="a"><a href="/MyAssignment/ViewProfileController?studentId=${student.getStudentId()}">Student Profile</a></td>

            </tr>
            <tr>
                <td class="a"><a href="/MyAssignment/ViewListGroupController?studentId=${student.getStudentId()}">View List Group Student</a></td>

            </tr>
        </table>

        <p>Mọi góp ý, thắc mắc xin liên hệ: Phòng dịch vụ sinh viên: Email: dichvusinhvien@fe.edu.vn. Điện thoại: (024)7308.13.13</p>
        </br>
        <a href="LoginController">Logout</a>
    </body>
</html>
