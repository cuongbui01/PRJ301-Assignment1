<link href="//netdna.bootstrapcdn.com/bootstrap/3.1.0/css/bootstrap.min.css" rel="stylesheet" id="bootstrap-css">
<script src="//netdna.bootstrapcdn.com/bootstrap/3.1.0/js/bootstrap.min.js"></script>
<script src="//code.jquery.com/jquery-1.11.1.min.js"></script>
<!------ Include the above in your HEAD tag ---------->
<script src="../js/JsforList.js" type="text/javascript"></script>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<style>
    .filterable {
        margin-top: 15px;

    }
    .filterable .panel-heading .pull-right {
        margin-top: -20px;
    }
    .filterable .filters input[disabled] {
        background-color: transparent;
        border: none;
        cursor: auto;
        box-shadow: none;
        padding: 0;
        height: auto;
    }
    .filterable .filters input[disabled]::-webkit-input-placeholder {
        color: #333;
    }
    .filterable .filters input[disabled]::-moz-placeholder {
        color: #333;
    }
    .filterable .filters input[disabled]:-ms-input-placeholder {
        color: #333;
    }
    img {
        height: 100px;
        width: 100px;
    }
    .a{
        margin-top: 200px;
    }
        
    .b{
            background-color: #6b90da;
            
        }
      
    
</style>
<html>
    <body>
        <h2>FPT University Academic Portal</h2>
        <a href="OtherListStudent.jsp">Home</a>
        <div class="a">
        <form action="ListController" method ="GET">
            
            <table class="table">
                <tr>
                    <td class="b">Index</td>
                    <td class="b">rollnumber</td>
                    <td class="b" >Name</td>
                    <td class="b">gender</td>
                    <td class="b">dob</td>
                    <td class="b">Image</td>
                    <td class="b">phone</td>
                </tr>
                <c:forEach items="${requestScope.student}" var="e">
                    <tr>
                        <td>${e.id}</td>
                        <td>${e.rollnumber}</td>
                        <td>${e.name}</td>
                        <td>${e.gender}</td>
                        <td>${e.dob}</td>
                        <td>
                            <img src="${e.img}" alt=""/>

                        </td >
                        <td>${e.phone}</td>
                    </tr>  
                </c:forEach>

            </table>
        </form></div>
    </body>
</html>