package com.bambii.dao;

import java.util.List;

import com.bambii.entities.Feeding;

public interface FeedingDao {
	//get all entries
	public List<Feeding> getAllFeeding();
	
	//get feed by Id
	public Feeding getFeedById(int id);

	//insert an entry
	public void addFeeding (Feeding feeding) throws Exception;

	//remove an entry 
	public boolean removeFeeding(int id);

	//update an entry
	public boolean updateFeeding(Integer id, Feeding feeding);

}
