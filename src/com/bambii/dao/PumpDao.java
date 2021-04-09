package com.bambii.dao;

import java.util.List;

import com.bambii.entities.Diaper;
import com.bambii.entities.Pump;

public interface PumpDao {
	//get all entries
	public List<Pump> getAllPump();

	//insert an entry
	public void addPump (Pump pump) throws Exception;

	//remove an entry 
	public boolean removePump(int pId);

	//update an entry
	public boolean updatePump(int pId, String pumpType, String pumpTime, 
			String pumpAmount, String pumpDate);

}
