
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
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <h1>Profile Student</h1>
        
        <table border="1">
            <thead>
                <tr>
                    <th class ="A">Image:</th>
                    <td><img src=" ${student.image}"/> </td>
                </tr>
                
                <tr>
                    <th class ="A" >Student Code:</th>
                     <td>${student.rollNumber}</td>
                </tr>
                
                <tr>
                    <th class ="A">Name: </th>
                    <td>${student.fullName}</td>
                </tr>
                    
                <tr>
                   <th class ="A">Gender:</th> 
                    <td>${student.gender == 'true'?"Male":"Female"}</td>
                </tr>
                    
                <tr>
                    <th class ="A">Date of Birth:</th>
                    <td>${student.dob}</td>
                </tr>
                   
                
                <tr>
                     <th class ="A">Address:</th>
                    <td>${student.address}</td>
                </tr>
                   
                
                
                <tr >
                     <th class ="A">Phone: </th>
                    <td>${student.phoneNumber}</td>
                </tr>
                
            </thead>
        </table>

    </body>
</html>