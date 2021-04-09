package com.bambii.dao;

import java.util.List;

import com.bambii.entities.Parent;

public interface ParentDao {
	
	//get parent by Id
	public Parent getParentByUsername(String username);
	//get all parents
	public List<Parent> getAllParents();
	//add parent into database
	public boolean insertParent(Parent parent);
	
	
}
