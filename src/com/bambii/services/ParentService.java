package com.bambii.services;

import java.util.List;

import javax.persistence.Query;

import com.bambii.dao.AbstractDAO;
import com.bambii.dao.ParentDao;
import com.bambii.entities.Parent;

public class ParentService extends AbstractDAO implements ParentDao{

	@Override
	public List<Parent> getAllParents(){
		List<Parent> allParents = null;
		//Step 1. Connect to DB
		connect();

		//Step 2. Execute Transaction
		try {
			em.getTransaction().begin();
			allParents = em.createQuery("Select p FROM Parent p", Parent.class).getResultList();
			em.getTransaction().commit();
		}catch (Exception e) {
			e.printStackTrace();
		}finally {
			//Step 3. Disconnect
			dispose();
		}

		return allParents;
	}

	@Override
	public Parent getParentByUsername(String username) {
		try {
			List<Parent> parents = getAllParents();
			for (Parent p: parents) {
				if (p.getUsername().equals(username))
				return p;
			}
			return null;
			
		} catch (Exception e) {
			return null;
		}
	}

	@Override
	public boolean insertParent(Parent parent) {
		connect();
		try {
			em.getTransaction().begin();
			em.persist(parent);
			em.getTransaction().commit();
			return true;
		}catch (Exception e) {
			return false;
		}finally {
			dispose();
		}
		
	}
}
