package util;

import java.sql.Connection;
import java.sql.DriverManager;

public class DatabaseUtil {
	
	public static Connection getConnection() {
		try {
			String jdbcDriver = "jdbc:mysql://localhost:3306/tutorial?&serverTimezone=UTC";
			String dbUser = "root";
			String dbPwd = "root";
			Class.forName("com.mysql.jdbc.Driver");
			return DriverManager.getConnection(jdbcDriver, dbUser, dbPwd);
		} catch (Exception e) {
			e.printStackTrace();
		}
		return null;
	}

}
