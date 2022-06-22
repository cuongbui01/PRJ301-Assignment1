<%-- 
    Document   : AttendanceReport
    Created on : Jun 22, 2022, 8:46:31 PM
    Author     : Cuong Bui
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <title>Bootstrap Example</title>
        <meta charset="utf-8">
        <meta name="viewport" content="width=device-width, initial-scale=1">
        <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css">
        <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.0/jquery.min.js"></script>
        <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/js/bootstrap.min.js"></script>
    </head>
    <style>
        .A {
            background-color: orange;
        }
        .a {
            color: rgb(0, 128, 0);
        }
        .b{
            color: red;
        }
    </style>
    <body>

        <div class="container">
            <h2>FPT University Academic Portal</h2>
            <p>View attendance for Bùi Quang Cường (CuongBQHE150907):</p>
            <input type="submit" value="Home" name="submit" /> <br> </br>            
            <table class="table table-bordered">
                <thead>
                    <tr>
                        <th class="A">Course</th>
                        <th class="A">No.</th>
                        <th class="A">Date</th>
                        <th class="A">Slot</th>
                        <th class="A">Room</th>
                        <th class="A">Lecturer</th>
                        <th class="A">Group Name</th>
                        <th class="A">Attendance Status</th>
                        <th class="A">Comment</th>
                    </tr>
                </thead>
                <tbody>
                    <tr>
                        <td>PRJ301</td>
                        <td>1</td>
                        <td>Monday: 09/05/2022</td>
                        <td>3</td>
                        <td>DE-303</td>
                        <td>Sonnt</td>
                        <td>SE1620-NET</td>
                        <td class="a">Present</td>
                        <td></td>



                    </tr>
                    <tr>
                        <td>PRJ301</td>
                        <td>2</td>
                        <td>Monday: 09/05/2022</td>
                        <td>3</td>
                        <td>DE-303</td>
                        <td>Sonnt</td>
                        <td>SE1620-NET</td>
                        <td class="b">Absent</td>
                        <td ></td>


                    </tr>
                    <tr>
                        <td>PRJ301</td>
                        <td>3</td>
                        <td>Monday: 09/05/2022</td>
                        <td>3</td>
                        <td>DE-303</td>
                        <td>Sonnt</td>
                        <td>SE1620-NET</td>
                        <td class="a">Present</td>
                        <td></td>
                    </tr>
                    <tr>
                        <td>PRJ301</td>
                        <td>4</td>
                        <td>Monday: 09/05/2022</td>
                        <td>3</td>
                        <td>DE-303</td>
                        <td>Sonnt</td>
                        <td>SE1620-NET</td>
                        <td class="b">Absent</td>
                        <td></td>
                    </tr>
                    <tr>
                        <td>PRJ301</td>
                        <td>5</td>
                        <td>Monday: 09/05/2022</td>
                        <td>3</td>
                        <td>DE-303</td>
                        <td>Sonnt</td>
                        <td>SE1620-NET</td>
                        <td class="a">Present</td>
                        <td></td>
                    </tr>
                </tbody>
            </table>
        </div>

    </body>
</html>
