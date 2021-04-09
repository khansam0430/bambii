package com.bambii.services;

import java.util.List;

import com.bambii.dao.AbstractDAO;
import com.bambii.dao.DiaperDao;
import com.bambii.dao.PumpDao;
import com.bambii.entities.Diaper;
import com.bambii.entities.Feeding;
import com.bambii.entities.Pump;

public class PumpService extends AbstractDAO implements PumpDao{
	@Override
	public List<Pump> getAllPump(){
		List<Pump> allPumps = null;
		//Step 1. Connect to DB
		connect();
		
		//Step 2. Execute Transaction
		try {
			em.getTransaction().begin();
			allPumps = em.createQuery("Select p FROM Pump p ORDER BY p.pId DESC", Pump.class).getResultList();
			em.getTransaction().commit();
		}catch (Exception e) {
			e.printStackTrace();
		}finally {
			//Step 3. Disconnect
			dispose();
		}

		return allPumps;
	}

	@Override
	public void addPump (Pump pump) throws Exception {
		try {
			//connect 
			connect();
				em.getTransaction().begin();
				em.persist(pump);
				em.getTransaction().commit();
				
		}catch(Exception e) {
			e.printStackTrace();
			throw e;
		}finally {
			dispose();
		}
		
	}

	@Override
	public boolean removePump(int pId) {
		//remove a feeding entry
		connect();
		try {
			em.getTransaction().begin();
			Pump removePumpEntry = em.find(Pump.class, pId);
			em.remove(removePumpEntry);
			em.getTransaction().commit();
			return true;
		}catch (Exception e) {
			System.out.println("Error deleting Pump Entry");
			return false;
		} finally {
			dispose();
		}
	}

	@Override
	public boolean updatePump(int pId, String pumpType, String pumpTime, 
			String pumpAmount, String pumpDate) {
		connect();
		try {
			em.getTransaction().begin();
			Pump findPump = em.find(Pump.class, pId);
			findPump.setPumpType(pumpType);
			findPump.setPumpTime(pumpTime);
			findPump.setPumpAmount(pumpAmount);
			findPump.setPumpDate(pumpDate);
			em.persist(findPump);
			em.getTransaction().commit();
			return true;
		} catch (Exception e) {
			return false;
		}finally {
			dispose();
		}
	}
}
