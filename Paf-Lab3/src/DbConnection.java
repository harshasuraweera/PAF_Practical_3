
import java.sql.DriverManager;
import com.mysql.cj.xdevapi.Statement;

public class DbConnection {
	 
	private static java.sql.Connection conn = null;
	static String url = "jdbc:mysql://localhost:3306/paf_test";
	static String userName = "root";
	static String password = "1234";
		

	public static java.sql.Connection getConnection() {
			
			try {
				
				Class.forName("com.mysql.cj.jdbc.Driver"); 
	    		conn =  DriverManager.getConnection("jdbc:mysql://localhost:3306/paf_test", "root", "1234");
	    		//System.out.println("Database connection is success!!!");
				
			}
			catch (Exception e) {
				e.printStackTrace();
			}
			
			return conn;
	}
	
	
}
