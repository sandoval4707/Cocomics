package com.Conexion;
import java.sql.*;
import com.microsoft.sqlserver.jdbc.*;


public class Conexion {
	
	
	public Connection conexion() throws ClassNotFoundException{
		
		Class.forName("com.microsoft.sqlserver.jdbc.SQLServerDriver");
        String connectionString
                = "jdbc:sqlserver://sergioserver.database.windows.net:1433;"
                + "database=Arquitectura;"
                + "user=sergio@sergioserver;"
                + "password=Sertio59304;"
                + "encrypt=true;"
                + "trustServerCertificate=false;"
                + "hostNameInCertificate=*.database.windows.net;"
                + "loginTimeout=30;";

        // Declare the JDBC objects.  
        Connection connection = null;

        try {
            connection = DriverManager.getConnection(connectionString);
		
	      }catch(Exception e){
		
			  e.printStackTrace();
	          System.out.println("no se realizo la conexion");
			}
			return connection;
}

}
