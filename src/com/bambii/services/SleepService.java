package com.bambii.services;

import java.util.List;

import com.bambii.dao.AbstractDAO;
import com.bambii.dao.SleepDao;
import com.bambii.entities.Feeding;
import com.bambii.entities.Sleep;


public class SleepService extends AbstractDAO implements SleepDao{
	@Override
	public List<Sleep> getAllSleep(){
		List<Sleep> allSleep = null;
		//Step 1. Connect to DB
		connect();

		//Step 2. Execute Transaction
		try {
			em.getTransaction().begin();
			allSleep = em.createQuery("Select s FROM Sleep s ORDER BY s.sId DESC", Sleep.class).getResultList();
			em.getTransaction().commit();	
		}catch (Exception e) {
			e.printStackTrace();
		}finally {
			//Step 3. Disconnect
			dispose();
		}

		return allSleep;
	}

	@Override
	public void addSleep (Sleep sleep) throws Exception {
		try {
			//connect 
			connect();
				em.getTransaction().begin();
				em.persist(sleep);
				em.getTransaction().commit();
				
		}catch(Exception e) {
			e.printStackTrace();
			throw e;
		}finally {
			dispose();
		}
		
	}

	@Override
	public boolean removeSleep(int id) {
		//remove a sleep entry
		connect();
		try {
			em.getTransaction().begin();
			Sleep removeSleepEntry = em.find(Sleep.class, id);
			em.remove(removeSleepEntry);
			em.getTransaction().commit();
			return true;
		}catch (Exception e) {
			System.out.println("Error deleting Sleep Entry");
			return false;
		} finally {
			dispose();
		}
	}
	
	public Sleep getSleepById(int sId) {
		Sleep result = null;
		//Step 1. Connect to DB
		connect();

		//Step 2. Execute Transaction
		try {
			em.getTransaction().begin();
			result = em.find(Sleep.class, sId);
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
	public boolean updateSleep(Integer sId, Sleep sleep) {
		connect();
		try {
			em.getTransaction().begin();
			Sleep findSleep = em.find(Sleep.class, sId);
			findSleep.setSleepStart(sleep.getSleepStart());
			findSleep.setSleepEnd(sleep.getSleepEnd());
			findSleep.setSleepDate(sleep.getSleepDate());
			em.getTransaction().commit();
			return true;
		} catch (Exception e) {
			return false;
		}finally {
			dispose();
		}
	}
}
