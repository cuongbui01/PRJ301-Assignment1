<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%-- 
    Document   : ViewListGroup
    Created on : Jul 12, 2022, 7:21:35 PM
    Author     : Cuong Bui
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <h1>List Group</h1>
        <table border="1">
            <thead>
                <tr>
                    <th>Group</th>   
                    <th></th>
                </tr>
            </thead>
            <tbody>
            <c:forEach var="g" items="${listGroup}">
                <tr>
                    <td>${g.getGroupId()==myGroupId?"*":""} ${g.getGroupCode()}</td>
                    <td><a href="StudentListInGroupController?groupId=${g.getGroupId()}">View Student List In Group</a></td>
                </tr>
            </c:forEach>
                
            </tbody>
        </table>

    </body>
</html>
