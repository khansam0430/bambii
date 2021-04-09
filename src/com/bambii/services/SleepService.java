package com.bambii.services;

import java.util.List;

import com.bambii.dao.AbstractDAO;
import com.bambii.dao.SleepDao;
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

	@Override
	public boolean updateSleep(Integer sId, String sleepStart, String sleepEnd, String sleepDate) {
		connect();
		try {
			em.getTransaction().begin();
			Sleep findSleep = em.find(Sleep.class, sId);
			findSleep.setsId(sId);
			findSleep.setSleepStart(sleepStart);
			findSleep.setSleepEnd(sleepEnd);
			findSleep.setSleepDate(sleepDate);
			em.persist(findSleep);
			em.getTransaction().commit();
			return true;
		} catch (Exception e) {
			return false;
		}finally {
			dispose();
		}
	}
}
