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
        
        <img src="assets/img/anhnam.jpg"/>

        
        <table style="width: 50%">
            <tr>
                <th class="A">Full Name:</th>
                <td class="a">Bui Quang Cuong</td>
            </tr>
            <tr>
                <th class="A">Roll Number</th>
                <td class="a">HE150907</td>
            </tr>
            <tr>
                <th class="A">Date Of Birth</th>  
                <td class="a">01-10-2001</td>      
            </tr>  
            <tr>
                <th class="A">Gender</th>
                <td class="a">Male</td>
            </tr>
            <tr>
                <th class="A">Phone Number</th>
                <td class="a">0962813919</td>
            </tr>
            
        </table>

    </body>
</html>

