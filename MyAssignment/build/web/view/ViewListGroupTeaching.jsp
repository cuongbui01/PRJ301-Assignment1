<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%-- 
    Document   : ViewListGroupTeaching
    Created on : Jul 12, 2022, 8:38:49 PM
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
        <h1>List Group Teaching</h1>
        <table border="1">
            <thead>
                <tr>
                    <th>Group</th>
                    <th>Subject</th>
                    <th></th>
                </tr>
            </thead>
            <tbody>
            <c:forEach var="g" items="${listGroupTeaching}">
                <tr>
                    <td>${g.getGroupCode()}</td>
                    <td>${g.getSubject().getSubjectCode()}</td>
                    <td><a href="/MyAssignment/ViewSessionDate?subjectId=${g.getSubject().getSubjectId()}&groupId=${g.getGroupId()}">View Session Date</td>
                </tr>
            </c:forEach>
                
            </tbody>
        </table>

    </body>
</html>
