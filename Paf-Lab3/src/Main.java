import java.sql.PreparedStatement;
import java.sql.SQLException;

public class Main {

	public static void main(String[] args) {
		
		System.out.print("First project for github\n\n");
		
		java.sql.Connection conn = DbConnection.getConnection();
		
		if(conn == null) {
			System.out.print("Connection failed!");
		}else {
			System.out.print("Connection successfull!");
		}
		
	}
	
	
	

}
