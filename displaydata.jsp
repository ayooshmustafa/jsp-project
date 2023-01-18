<%-- 
    Document   : displaydata
    Created on : Jan 6, 2023, 10:29:21 PM
    Author     : aya
--%>
<%@page import="java.sql.*" %>
<%@page import="javax.swing.*" %>
<%@include file="connection.jsp" %>
<%@page import="javax.swing.JOptionPane" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <%
        PreparedStatement pst=null;
        ResultSet emps=null;
        String q="select * from info";
        try{
            pst=conn.prepareStatement(q);
            emps=pst.executeQuery();
        }
        catch(Exception e){
            JOptionPane.showMessageDialog(null,"cannot retrieve data") ; }
        %>
   <table border="1">
    <thead>
    <tr bgcolor="blue">
        <th> Id        </th>
        <th> First Name     </th>
        <th> Last Name     </th>
        <th> USER NAME </th>
        <th> PASSWORD  </th>
    </tr>
    </thead>
<tbody>
    <% while(emps.next()){ %>
    <tr >
        <td><%=emps.getString(1) %></td>
        <td><%=emps.getString(2) %></td>
        <td><%=emps.getString(3) %></td>
        <td><%=emps.getString(4) %></td>
        <td><%=emps.getString(5) %></td>
    </tr><% } %>
</tbody>
</table>

    </body>
</html>
