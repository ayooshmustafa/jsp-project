<%@page import="java.sql.PreparedStatement"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@include file="connection.jsp" %> 
<%@page isErrorPage="true" %>

<!DOCTYPE html>
<html>
    
    <body>
        <% if(request.getParameter("submit")!= null){
            PreparedStatement pst =null;
            String q = "delete from INFO where id=?";
            try{
                pst = conn.prepareStatement(q);
                pst.setString(1, request.getParameter("id"));
                pst.executeUpdate();
                if(pst.getUpdateCount()>0)
                    out.println("data is deleted suuessfully");
                else
                   out.println( "data is not found"); 
            }
            catch (Exception e){
                out.println("error in deleting");
            }  
        } 
        %>
         sorry following exception occurred :<%= exception %>
    </body>
</html>
