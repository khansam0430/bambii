package com.bambii.services;

import java.sql.SQLException;
import java.util.List;

import com.bambii.dao.AbstractDAO;
import com.bambii.dao.FeedingDao;
import com.bambii.entities.Feeding;

public class FeedingService extends AbstractDAO implements FeedingDao{
	@Override
	public List<Feeding> getAllFeeding(){
		List<Feeding> allFeedings = null;
		//Step 1. Connect to DB
		connect();

		//Step 2. Execute Transaction
		try {
			em.getTransaction().begin();
			allFeedings = em.createQuery("Select f FROM Feeding f ORDER BY f.id DESC", Feeding.class).getResultList();
			em.getTransaction().commit();
		}catch (Exception e) {
			e.printStackTrace();
		}finally {
			//Step 3. Disconnect
			dispose();
		}

		return allFeedings;
	}
	
	public Feeding getFeedById(int id) {
		Feeding result = null;
		//Step 1. Connect to DB
		connect();

		//Step 2. Execute Transaction
		try {
			em.getTransaction().begin();
			result = em.find(Feeding.class, id);
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
	public void addFeeding (Feeding feeding) throws Exception {
		try {
			//connect 
			connect();
				em.getTransaction().begin();
				em.persist(feeding);
				em.getTransaction().commit();
				
		}catch(Exception e) {
			e.printStackTrace();
			throw e;
		}finally {
			dispose();
		}
		
	}

	@Override
	public boolean removeFeeding(int id) {
		//remove a feeding entry
		connect();
		try {
			em.getTransaction().begin();
			
			Feeding removeFeedingEntry = em.find(Feeding.class, id);
			em.remove(removeFeedingEntry);
			em.getTransaction().commit();
			return true;
		}catch (Exception e) {
			System.out.println("Error deleting Feeding Entry");
			return false;
		} finally {
			dispose();
		}
	}

	@Override
	public boolean updateFeeding( Integer id, Feeding feeding ) {
		connect();
		try {
			em.getTransaction().begin();
			Feeding findFeed = em.find(Feeding.class, id);
			findFeed.setFeedType(feeding.getFeedType());
			findFeed.setFeedTime(feeding.getFeedTime());
			findFeed.setFeedAmount(feeding.getFeedAmount());
			findFeed.setFeedDate(feeding.getFeedDate());
			em.getTransaction().commit();
			return true;
		} catch (Exception e) {
			return false;
		}finally {
			dispose();
		}
	}
}
