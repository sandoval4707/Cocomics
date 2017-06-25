package com.Factory;

import com.DAO.DaoManga;

public class Factory {
	
	
	public DaoManga devolverManga(){
		
		return new DaoManga();
	}
	

}
