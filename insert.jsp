<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="java.sql.*,java.util.*" %>

<%@page import="javax.swing.*" %>
<%@include file="connection.jsp" %>
<%@page isErrorPage="true" %>

<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        
        <% PreparedStatement pst=null;
        ResultSet emps = null;
        String q;
        q= "insert into info values (?,?,?,?,?)";
     
            pst=conn.prepareStatement(q);
            pst.setString(1,request.getParameter("ID"));
            pst.setString(2,request.getParameter("Fname"));
            pst.setString(3,request.getParameter("Lname"));
            pst.setString(4,request.getParameter("Passwd"));
            pst.setString(5,request.getParameter("Address"));
            pst.executeUpdate();
            
       
        %>
          sorry following exception occurred :<%= exception %>
    </body>
</html>