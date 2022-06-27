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
        <h2>Take Attendance for Sonnt5 (Ngô Tùng Sơn)</h2>

        <form method="POST">
            <table border="1" style="width:100%">
                <thead>
                    <tr>
                        
                        <th class="A" >Course</th>
                        <th class="A">DATE TIME
                        </th>
                        <th class="A">NO.</th>
                        <th class="A">Student Id</th>
                        <th class="A">Student Name</th>
                        <th class="A">Attendance</th>
                        <th class="A">Comment</th>

                    </tr>
                </thead>
                <tbody>

                    <tr>
                        <th style="width: 5%" rowspan="15" class="T"> <a href="ViewCourse.jsp">DBI202<br><a></th>
                                    <th style="width: 3%" rowspan="15"> choose a timeline <br> <select name="DATE TIME">
                                <option>21/06/2022</option>
                               <option>22/06/2022</option>
                               <option>23/06/2022</option>
                               <option>24/06/2022</option>
                               <option>25/06/2022</option> 
                               <option>26/06/2022</option>
                               <option>27/06/2022</option>
                               <option>28/06/2022</option>
                               <option>29/06/2022</option>
                               <option>30/06/2022</option>
                            </select></th>
                        <th>1</th>
                        
                        
                        <th>HE150907</th>
                        <th>Nguyễn Phúc Hưng</th>
                        <th><input type="radio" name="Attendance" value="1" /> Present
                            <input type="radio" name="Absent" value="0" /> Absent </th>
                        <th><input type="text" name="Comment" value="" /></th>

                    </tr>
                    <tr>
                        <th>2</th>
                        
                        <th>HE150907</th>
                        
                        <th>Nguyễn Trà My</th>
                        <th><input type="radio" name="Attendance" value="1" /> Present
                            <input type="radio" name="Absent" value="0" /> Absent </th>
                        <th><input type="text" name="Comment" value="" /></th>

                    </tr>
                    <tr>
                         <th>2</th>

                        <th>HE150907</th>
                       
                        <th>Đỗ Thúy Hường</th>

                        <th><input type="radio" name="Attendance" value="1" /> Present
                            <input type="radio" name="Absent" value="0" /> Absent </th>
                        <th><input type="text" name="Comment" value="" /></th>

                    </tr>
                    <tr>
                        <th>4</th>


                        <th>HE150907</th>
                                                <th>Phạm Anh Vinh</th>

                        <th><input type="radio" name="Attendance" value="1" /> Present
                            <input type="radio" name="Absent" value="0" /> Absent </th>
                        <th><input type="text" name="Comment" value="" /></th>

                    </tr>
                    <tr>
                        <th>5</th>

                        <th>HE150907</th>
                        
                        <th>Nguyễn Thế Huân</th>

                        <th><input type="radio" name="Attendance" value="1" /> Present
                            <input type="radio" name="Absent" value="0" /> Absent </th>
                        <th><input type="text" name="Comment" value="" /></th>

                    </tr> 
                    <tr>
                        <th>6</th>

                        <th>HE150907</th>
                        
                        <th>Nguyễn Thị Ngọc</th>

                        <th><input type="radio" name="Attendance" value="1" /> Present
                            <input type="radio" name="Absent" value="0" /> Absent </th>
                        <th><input type="text" name="Comment" value="" /></th>

                    </tr> 
                    <tr>
                        <th>7</th>

                        <th>HE150907</th>
                        
                        <th>Nguyễn Đình Sang</th>

                        <th><input type="radio" name="Attendance" value="1" /> Present
                            <input type="radio" name="Absent" value="0" /> Absent </th>
                        <th><input type="text" name="Comment" value="" /></th>

                    </tr> 
                    <tr>
                        <th>8</th>

                        <th>HE150907</th>
                        
                        <th>Đào Tiến Trung</th>

                        <th><input type="radio" name="Attendance" value="1" /> Present
                            <input type="radio" name="Absent" value="0" /> Absent </th>
                        <th><input type="text" name="Comment" value="" /></th>

                    </tr> 
                    <tr>
                        <th>9</th>

                        <th>HE150907</th>
                        
                        <th>Ha Thu An</th>

                        <th><input type="radio" name="Attendance" value="1" /> Present
                            <input type="radio" name="Absent" value="0" /> Absent </th>
                        <th><input type="text" name="Comment" value="" /></th>

                    </tr> 
                    <tr>
                        <th>10</th>

                        <th>HE150907</th>
                        
                        <th>Phạm Hồng Hạnh</th>

                        <th><input type="radio" name="Attendance" value="1" /> Present
                            <input type="radio" name="Absent" value="0" /> Absent </th>
                        <th><input type="text" name="Comment" value="" /></th>

                    </tr> 
                    <tr>
                        <th>11</th>

                        <th>HE150907</th>
                        
                        <th>Phạm Hồng Phước</th>

                        <th><input type="radio" name="Attendance" value="1" /> Present
                            <input type="radio" name="Absent" value="0" /> Absent </th>
                        <th><input type="text" name="Comment" value="" /></th>

                    </tr> 
                    <tr>
                        <th>12</th>

                        <th>HE150907</th>
                        
                        <th>Trần Anh Hiếu</th>

                        <th><input type="radio" name="Attendance" value="1" /> Present
                            <input type="radio" name="Absent" value="0" /> Absent </th>
                        <th><input type="text" name="Comment" value="" /></th>

                    </tr> 
                    <tr>
                        <th>13</th>

                        <th>HE150907</th>
                        
                        <th>Lê Thùy Trang</th>

                        <th><input type="radio" name="Attendance" value="1" /> Present
                            <input type="radio" name="Absent" value="0" /> Absent </th>
                        <th><input type="text" name="Comment" value="" /></th>

                    </tr> 
                    <tr>
                        <th>14</th>
 
                        <th>HE150907</th>
                       
                        <th>Vũ Ngọc Ánh</th>

                        <th><input type="radio" name="Attendance" value="1" /> Present
                            <input type="radio" name="Absent" value="0" /> Absent </th>
                        <th><input type="text" name="Comment" value="" /></th>

                    </tr>
                    <tr>
                        <th>15</th>
                        
                        <th>HE150907</th>
                        
                        <th>Hà Anh Tuấn</th>

                        <th><input type="radio" name="Attendance" value="1" /> Present
                            <input type="radio" name="Absent" value="0" /> Absent </th>
                        <th><input type="text" name="Comment" value="" /></th>

                    </tr>

                <input type="submit" value="Save" name="submit" /> <br> </br>
                <input type="submit" value="1620" name="submit" />
                <input type="submit" value="1615" name="submit" />
                <input class ="m" type="submit" value="1619" name="submit" />
                <input type="submit" value="1607" name="submit" />
                <input type="submit" value="1611" name="submit" />
                <input type="submit" value="1603" name="submit" />
                
                
                </tbody>
            </table>
        </form>
    </body>

</html>
