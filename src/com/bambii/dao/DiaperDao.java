package com.bambii.dao;

import java.util.List;

import com.bambii.entities.Diaper;

public interface DiaperDao {
	//get all entries
	public List<Diaper> getAllDiaper();
	
	//get diaper by Id
	public Diaper getDiaperById(int dId);

	//insert an entry
	public void addDiaper (Diaper diaper) throws Exception;

	//remove an entry 
	public boolean removeDiaper(int dId);

	//update an entry
	public boolean updateDiaper(Integer dId, Diaper diaper);

}
