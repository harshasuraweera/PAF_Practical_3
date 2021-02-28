import java.io.IOException;
import java.sql.SQLException;
import java.util.concurrent.ThreadLocalRandom;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/AddItemServelet")
public class AddItemServelet extends HttpServlet{
	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

		
		String itemCode = request.getParameter("itemCode");
		String itemName = request.getParameter("itemName");
		String itemPrice = request.getParameter("itemPrice");
		String itemDesc = request.getParameter("itemDesc");
		
		String output = "";
		
		int intItemID = ThreadLocalRandom.current().nextInt(50, 1000 + 1);
		double doubleItemPrice = Double.valueOf(itemPrice);
	
			try {
				Queries.insertItem(intItemID, itemCode, itemName, doubleItemPrice, itemDesc);
				output = "Inserted successfully";
				
			} catch (SQLException e) {
				output = "Error while inserting";
				e.printStackTrace();
			}
			
			System.out.print(output);
	
		
		response.sendRedirect("items.jsp");
		
	}

}
