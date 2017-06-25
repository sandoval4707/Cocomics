package com.DAO;

import java.util.ArrayList;
import java.sql.*;

import com.Conexion.Conexion;
import com.DTO.MangaDto;

public class DaoManga {
	
	public  ArrayList<MangaDto> consultarMangas() throws ClassNotFoundException, SQLException{
		
		 Conexion c=new Conexion();
		 Connection con= c.conexion();
		 ArrayList<MangaDto> m=new ArrayList<MangaDto>();
		 
		 String selectSql = "SELECT * "
                 + "FROM dbo.manga pc ";
         Statement statement = con.createStatement();
         ResultSet resultSet = statement.executeQuery(selectSql);
 
         while (resultSet.next()) {
              m.add(new MangaDto(resultSet.getString("nombre"),resultSet.getString("fechaE"),resultSet.getString("imagen"),resultSet.getString("genero"),resultSet.getString("descripcion") ));
         }
		
         		return m;
	}
	  

}
