<%-- 
    Document   : ViewFeature
    Created on : Jun 14, 2022, 8:29:44 PM
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

        <table style="width:100%">
            <tr>
                <th class="A">Academic Information</th>               
            </tr>
            <tr>
                <td class="a"><a href="view/ViewTimeTable.jsp">Weekly timetable (Thời khóa biểu từng tuần)</a></td>

            </tr>
            <tr>
                <td class="a"><a href="view/ViewTimeTable.jsp">Attendance report (Báo cáo điểm danh)</a></td>

            </tr>
            <tr>
                <td class="a"><a href="view/ViewProfile.jsp">Student Profile</a></td>

            </tr>
        </table>

        <p>Mọi góp ý, thắc mắc xin liên hệ: Phòng dịch vụ sinh viên: Email: dichvusinhvien@fe.edu.vn. Điện thoại: (024)7308.13.13</p>

    </body>
</html>
