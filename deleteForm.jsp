<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@include file="connection.jsp" %> 
<!DOCTYPE html>
<html>
    <body>
        <form action="delete.jsp">
            ID:<input type="text" name="id" size="10">
            <input type="submit" value="Delete" name="submit">
        </form>
    </body>
</html>
