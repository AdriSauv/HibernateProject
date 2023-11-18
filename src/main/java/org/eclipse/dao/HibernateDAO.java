package org.eclipse.dao;

import java.util.*;

import org.eclipse.model.Users;
import org.hibernate.*;
import org.hibernate.cfg.Configuration;

public class HibernateDAO {
	public void ajouterUsers(Users user) {
		Configuration configuration = new Configuration().configure();
		SessionFactory sf = configuration.buildSessionFactory();
		
		Session session = sf.openSession();
		Transaction tr = session.beginTransaction();
		session.persist(user);
		tr.commit();
		
		session.close();
		sf.close();
	}
	
	public List<Users> getAllUsers() {
        Configuration configuration = new Configuration().configure();
        SessionFactory sf = configuration.buildSessionFactory();

        Session session = sf.openSession();
        Transaction tr = session.beginTransaction();
        
        List<Users> userList = session.createQuery("FROM Users").list();

        tr.commit();
        session.close();
        sf.close();

        return userList;
    }
	
	public void deleteUsers(Users user) {
		
	}
}