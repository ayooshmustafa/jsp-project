<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Insert Page</title>
    </head>
    <body>
        <%@include file="connection.jsp" %>
       <form name="myForm" action="insert.jsp" method="POST">
            <table border="0">
                <tbody>
                    <tr>
                        <td>ID</td>
                        <td><input type="text" name="ID" value="" size="40"/></td>
                    </tr>
                    <tr>
                        <td>First Name</td>
                        <td><input type="text" name="Fname" value="" size="40"/></td>
                    </tr>
                    <tr>
                        <td>Last Name</td>
                        <td><input type="text" name="Lname" value="" size="40"/></td>
                    </tr>
                    
                    <tr>
                        <td>Passwd</td>
                        <td><input type="text" name="Passwd" value="" size="40"/></td>
                    </tr>
                    <tr>
                        <td>Address</td>
                        <td><input type="text" name="Address" value="" size="40"/></td>
                    </tr>
                </tbody>
            </table>
            <input type="submit" value="Submit" name="submit"/>
            <input type="reset" value="Clear" name="clear"/>
        </form>
    </body>
</html>
