package com.bambii.dao;

import javax.persistence.EntityManager;
import javax.persistence.EntityManagerFactory;
import javax.persistence.Persistence;

public abstract class AbstractDAO {

	protected static EntityManagerFactory emf = null;
	protected static EntityManager em = null;
	private final static String PERSISTENCEUNITNAME = "bambii";

	// creating a connect to DB so this can be used in the main
	protected static void connect() {
		emf = Persistence.createEntityManagerFactory(PERSISTENCEUNITNAME);
		em = emf.createEntityManager();
	}

	// creating a dispose so this can be used throughout project
	protected static void dispose() {
		em.close();
		emf.close();
	}// protected void dispose()

}
