<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@page import="java.util.ArrayList"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.Connection"%>
<%@page import="java.sql.PreparedStatement"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert Data</title>
</head>
<body>

<div>
	
	<form method="post" action="AddItemServelet">
		<h1>Add New Item</h1><br>
		<label> Item Code :
			<input type="text" name="itemCode"/>
		</label><br><br>
		<label> Item Name :
			<input type="text" name="itemName"/>
		</label><br><br>
		<label> Item Price :
			<input type="text" name="itemPrice"/>
		</label><br><br>
		<label> Item Description :
			<textarea name="itemDesc" rows="4" cols="50"> </textarea>
		</label><br><br>
		
		<input type="submit" value="Add Item">
	
	</form>
	
	<br><br>
	
	<table class="table" border="1">
        <thead>
            <tr>
                <th>Item ID</th>
                <th>Item Code</th>
                <th>Item Name</th>
                <th>Item Price</th>
                <th>Item Description</th>
            </tr>
        </thead>
        <tbody>
        
        
        
        <%	
        
		    	try {
		    		
		    		
		    		java.sql.Connection conn = DbConnection.getConnection();
		    		String query = "select * from items";
		    		
		    		Statement stmt=conn.createStatement();
		    		ResultSet rs=stmt.executeQuery(query);
		    		
		    		while(rs.next())
		    		{
		    			
		    		%>
		    		    <tr>
		    		    
		    		    <td><%=rs.getInt("itemID") %></td>
		    		   <td><%=rs.getString("itemCode") %></td>
		    		   <td><%=rs.getString("itemName") %></td>
		    		   <td><%=Double.toString(rs.getDouble("itemPrice")) %></td>
		    		   <td><%=rs.getString("itemDesc") %></td>
		    		   
		    		   
		    		   
		    		   
		    		   
		    		   
		    		   </tr>
		    		        <%

		    		}
		    		%>
		    		    </table>
		    		    <%
		    		    rs.close();
		    		    stmt.close();
		    		    conn.close();
		    		    }
		    		catch(Exception e)
		    		{
		    		    e.printStackTrace();
		    		    }

%>
	
</div>
		


</body>
</html>