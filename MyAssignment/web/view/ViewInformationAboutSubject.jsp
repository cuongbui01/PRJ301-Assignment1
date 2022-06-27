<%-- 
    Document   : ViewProfile
    Created on : Jun 13, 2022, 5:31:56 PM
    Author     : Cuong Bui
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <style>
            table, th, td {
                border: 1px solid black;
            }
            .A{
                background-color: orange;
            }
            .a {
                text-align: center;
            }
        </style>
    </head>
    <body>

        <h1>FPT University Academic Portal</h1>
        <a href="ViewTimeTable.jsp">Home</a> <br>
        <h3>Student Profile</h3> <br> <br>

       

        <table style="width: 50%">
            <tr>
                <th class="A">Date:</th>
                <td class="a">2022-06-20</td>
            </tr>
            <tr>
                <th class="A">Slot</th>
                <td class="a">1</td>
            </tr>
            <tr>
                <th class="A">Student Group</th>  
                <td class="a">SE1620</td>      
            </tr>  
            <tr>
                <th class="A">Lecture</th>
                <td class="a">Ngo Tung Son</td>
            </tr>
            <tr>
                <th class="A">Course</th>
                <td class="a"><a href="../ListCourse">PRJ301<a></td>
            </tr>
            
        </table>

    </body>
</html>

