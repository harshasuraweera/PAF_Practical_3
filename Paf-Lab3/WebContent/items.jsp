<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>

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
	
	<%
		
		out.print(Queries.readItems());
		
		
	%>
	
</div>
		


</body>
</html>