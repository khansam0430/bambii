package com.bambii.dao;

import java.util.List;

import com.bambii.entities.Sleep;

public interface SleepDao {

	//get all entries
	public List<Sleep> getAllSleep();
	
	//get sleep by Id
	public Sleep getSleepById(int sId);

	//insert an entry
	public void addSleep (Sleep sleep) throws Exception;

	//remove an entry 
	public boolean removeSleep(int sId);

	//update an entry
	public boolean updateSleep(Integer sId, Sleep sleep);

}