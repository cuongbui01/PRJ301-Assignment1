
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
        table, th, td {
            border:1px solid black;
        }
            
    .a{
            background-color: orange;
            
        }
        .b{
            color: green;
        }
        .c {
            color: red;
        }
    </style>
    <body>
        <h2> FPT University Academic Portal </h2>
        <a href="ViewFeature.jsp">Home</a>
        <h4>Activities for Sonnt5 (Ngô Tùng Sơn)</h4>
        <p>
            Chú thích: Các hoạt động trong bảng dưới không bao gồm hoạt động ngoại khóa, ví dụ như hoạt động câu lạc bộ ...<br>

            Các phòng bắt đầu bằng AL thuộc tòa nhà Alpha. VD: AL...<br>
            Các phòng bắt đầu bằng BE thuộc tòa nhà Beta. VD: BE,..<br>
            Các phòng bắt đầu bằng G thuộc tòa nhà Gamma. VD: G201,...<br>
            Các phòng tập bằng đầu bằng R thuộc khu vực sân tập Vovinam.<br>
            Các phòng bắt đầu bằng DE thuộc tòa nhà Delta. VD: DE,..<br>
            Little UK (LUK) thuộc tầng 5 tòa nhà Delta</p>

        <table style="width:100%">

            <tr>
                <td class="a">Year <select name="Year">
                        <option>2022</option>
                        <option>2023</option>
                        <option>2019</option>
                        <option>2020</option>
                        <option>2021</option>
                        <option>2024</option>
                    </select><br>
                    Week <select name="Week">
                        <option>20/06 to 26/06</option>
                        <option>27/06 to 03/07</option>
                        <option>04/07 to 10/07</option>
                        <option>11/07 to 17/07</option>
                        <option>23/07 to 29/07</option>
                        <option>05/08 to 11/08</option>
                        <option>12/08 to 18/08</option>
                        <option>19/08 to 25/08</option>
                        <option>01/09 to 07/09</option>
                    </select>
                </td>
                <td class="a">MON</td>
                <td class="a">TUE</td>
                <td class="a">WED</td>
                <td class="a">THU</td>
                <td class="a">FRI</td> 
                <td class="a">SAT</td>  
                <td class="a">SUN</td>

            </tr>
            <tr>
                <td style="width:1%" >Slot 1 <br> (7:30-9:00) </td>
                <td><a href="">PRJ301 - SE1620<a><br> <p>at BE-213<p><p class="b">(attended)</p></td>
                            <td><a href="">PRJ301 - SE1620 <a><p> at BE-213</p><p class="b">(attended)</p></td>
                <td><a href="">PRJ301 - SE1620<a><br> <p>at BE-213</p><p class="b">(attended)</p></td>
                <td><a href="">PRJ301 - SE1620<a><br> <p>at BE-213</p><p class="c">(Not yet)</p></td>
                <td><a href="">PRJ301 - SE1620<a><br> <p>at BE-213</p><p class="c">(Not yet)</p></td>
                <td>-</td>
                <td>-</td>

            </tr>
            <tr>
               <td>Slot 2 <br> (9:10-10:40) </td>
                <td><a href="">PRJ301 - SE1615<a><br> <p>at DE-304<p><p class="b">(attended)</p></td>
                            <td><a href="">PRJ301 - SE1615 <a><p>at DE-304</p><p class="b">(attended)</p></td>
                <td><a href="">PRJ301 - SE1615<a><br> <p>at DE-304</p><p class="b">(attended)</p></td>
                <td><a href="">PRJ301 - SE1615<a><br> <p>at DE-304</p><p class="c">(Not yet)</p></td>
                <td><a href="">PRJ301 - SE1615<a><br> <p>aat DE-304</p><p class="c">(Not yet)</p></td>
                <td>-</td>
                <td>-</td>

            </tr>
            <tr>
                <td>Slot 3 <br> (10:50-12:20) </td>
                <td><a href="">DBI202 - SE1619<a><br> <p>at DE-215<p><p class="b">(attended)</p></td>
                            <td><a href="">DBI202 - SE1619 <a><p> at DE-215</p><p class="b">(attended)</p></td>
                <td><a href="Attendance.html">DBI202 - SE1619<a><br> <p>at DE-215</p><p class="b">(attended)</p></td>
                <td><a href="">DBI202 - SE1619<a><br> <p>at DE-215</p><p class="c">(Not yet)</p></td>
                <td><a href="">DBI202 - SE1619<a><br> <p>at DE-215</p><p class="c">(Not yet)</p></td>
                <td>-</td>
                <td>-</td>

            </tr>
            <tr>
                <td>Slot 4 <br> (12:50-14:20) </td>
                <td><a href="">PRO192 - SE1607<a><br> <p>at BE-412<p><p class="b">(attended)</p></td>
                            <td><a href="">PRO192 - SE1607 <a><p> at BE-213</p><p class="b">(attended)</p></td>
                <td><a href="">PRO192 - SE1607<a><br> <p>at BE-412</p><p class="b">(attended)</p></td>
                <td><a href="">PRO192 - SE1607<a><br> <p>at BE-412</p><p class="c">(Not yet)</p></td>
                <td><a href="">PRO192 - SE1607<a><br> <p>at BE-412</p><p class="c">(Not yet)</p></td>
                <td>-</td>
                <td>-</td>

            </tr>
            <tr>
                <td>Slot 5 <br> (14:30-16:00) </td>
                <td><a href="">PRJ301 - SE1611<a><br> <p>at DE-317<p><p class="b">(attended)</p></td>
                            <td><a href="">PRJ301 - SE1611 <a><p> at DE-317</p><p class="b">(attended)</p></td>
                <td><a href="">PRJ301 - SE1611<a><br> <p>at DE-317</p><p class="b">(attended)</p></td>
                <td><a href="">PRJ301 - SE1611<a><br> <p>at DE-317</p><p class="c">(Not yet)</p></td>
                <td><a href="">PRJ301 - SE1611<a><br> <p>at DE-317</p><p class="c">(Not yet)</p></td>
                <td>-</td>
                <td>-</td>

            </tr>
            <tr>
               <td>Slot 6 <br> (16:00-17:40) </td>
                <td><a href="">SWT301 - SE1603<a><br> <p>at AL-212<p><p class="b">(attended)</p></td>
                            <td><a href="">SWT301 - SE1603 <a><p> at AL-212</p><p class="b">(attended)</p></td>
                <td><a href="">SWT301 - SE1603<a><br> <p>at AL-212</p><p class="b">(attended)</p></td>
                <td><a href="">SWT301 - SE1603<a><br> <p>at AL-212</p><p class="c" >(Not yet)</p></td>
                <td><a href="">SWT301 - SE1603<a><br> <p>at AL-212</p><p class="c">(Not yet)</p></td>
                <td>-</td>
                <td>-</td>

            </tr>
        </table>

    

    </body>
</html>