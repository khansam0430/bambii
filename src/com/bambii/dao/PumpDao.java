package com.bambii.dao;

import java.util.List;

import com.bambii.entities.Pump;

public interface PumpDao {
	//get all entries
	public List<Pump> getAllPump();
	
	//get pump by Id
	public Pump getPumpById(int pId);

	//insert an entry
	public void addPump (Pump pump) throws Exception;

	//remove an entry 
	public boolean removePump(int pId);

	//update an entry
	public boolean updatePump(Integer pId, Pump pump);

}
