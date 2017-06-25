package com.Fachada;

import java.sql.SQLException;
import java.util.ArrayList;

import com.DTO.MangaDto;
import com.Factory.Factory;

public class Fachada {
	
	private Factory f;
	
	public Fachada(){
		f=new Factory();
	}
	
	
	public ArrayList<MangaDto> mostrarMangas() throws ClassNotFoundException, SQLException{
		   return f.devolverManga().consultarMangas();	
	}

}
