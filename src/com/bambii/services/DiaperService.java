package com.bambii.services;

import java.util.List;

import com.bambii.dao.AbstractDAO;
import com.bambii.dao.DiaperDao;
import com.bambii.entities.Diaper;
import com.bambii.entities.Feeding;

public class DiaperService extends AbstractDAO implements DiaperDao{
	@Override
	public List<Diaper> getAllDiaper(){
		List<Diaper> allDiapers = null;
		//Step 1. Connect to DB
		connect();
		
		//Step 2. Execute Transaction
		try {
			em.getTransaction().begin();
			allDiapers = em.createQuery("Select d FROM Diaper d ORDER BY d.dId DESC", Diaper.class).getResultList();
			em.getTransaction().commit();
		}catch (Exception e) {
			e.printStackTrace();
		}finally {
			//Step 3. Disconnect
			dispose();
		}

		return allDiapers;
	}

	@Override
	public void addDiaper (Diaper diaper) throws Exception {
		try {
			//connect 
			connect();
				em.getTransaction().begin();
				em.persist(diaper);
				em.getTransaction().commit();
				
		}catch(Exception e) {
			e.printStackTrace();
			throw e;
		}finally {
			dispose();
		}
		
	}

	@Override
	public boolean removeDiaper(int dId) {
		//remove a feeding entry
		connect();
		try {
			em.getTransaction().begin();
			Diaper removeDiaperEntry = em.find(Diaper.class, dId);
			em.remove(removeDiaperEntry);
			em.getTransaction().commit();
			return true;
		}catch (Exception e) {
			System.out.println("Error deleting Diaper Entry");
			return false;
		} finally {
			dispose();
		}
	}
	
	public Diaper getDiaperById(int dId) {
		Diaper result = null;
		//Step 1. Connect to DB
		connect();

		//Step 2. Execute Transaction
		try {
			em.getTransaction().begin();
			result = em.find(Diaper.class, dId);
			em.getTransaction().commit();
		}catch (Exception e) {
			e.printStackTrace();
		}finally {
			//Step 3. Disconnect
			dispose();
		}
		return result;
	}

	@Override
	public boolean updateDiaper(Integer dId, Diaper diaper) {
		connect();
		try {
			em.getTransaction().begin();
			Diaper findDiaper = em.find(Diaper.class, dId);
			findDiaper.setDiaperType(diaper.getDiaperType());
			findDiaper.setDiaperTime(diaper.getDiaperTime());
			findDiaper.setDiaperDate(diaper.getDiaperDate());
			findDiaper.setDiaperNotes(diaper.getDiaperNotes());
			em.persist(findDiaper);
			em.getTransaction().commit();
			return true;
		} catch (Exception e) {
			return false;
		}finally {
			dispose();
		}
	}
}
