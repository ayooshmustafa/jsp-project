<%-- 
    Document   : connection
    Created on : Jan 6, 2023, 6:40:09 PM
    Author     : aya
--%>
<%@page import="java.sql.*" %>
<%@page import="javax.swing.*" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <%
        Connection conn=null;
        try{
        Class.forName("org.apache.derby.jdbc.ClientDriver");
        conn= DriverManager.getConnection("jdbc:derby://localhost:1527/WEBDB2 ","aya","test");
        
        /*out.println("connected successfully");*/
        }catch(Exception e){
            out.println("error is " + e);
           out.println("hehe error in connection");}
        %>
    </body>
</html>
