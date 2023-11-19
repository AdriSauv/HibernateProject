package org.eclipse.dao;

import java.util.List;

import org.eclipse.model.Compte;
import org.eclipse.model.Users;
import org.hibernate.*;
import org.hibernate.cfg.Configuration;

public class HibernateDAO {

    private static SessionFactory sf;

    static {
        // Initialize the SessionFactory once during the application startup
        Configuration configuration = new Configuration().configure();
        sf = configuration.buildSessionFactory();
    }

    public void ajouterUsers(Users user) {
        try (Session session = sf.openSession()) {
            Transaction tr = session.beginTransaction();
            session.persist(user);
            tr.commit();
        }
    }

    public List<Users> getAllUsers() {
        try (Session session = sf.openSession()) {
            Transaction tr = session.beginTransaction();
            
            List<Users> userList = session.createQuery("FROM Users").list();
            
            tr.commit();
            return userList;
        }
    }

    public Users getUserById(int userId) {
        try (Session session = sf.openSession()) {
            Transaction tr = session.beginTransaction();
            
            Users user = session.get(Users.class, userId);
            
            tr.commit();
            return user;
        }
    }

    public void deleteUser(Users user) {
        try (Session session = sf.openSession()) {
            Transaction tr = session.beginTransaction();
            session.delete(user);
            tr.commit();
        }
    }
    
    public void addUserAndAccount(Users user, Compte compte) {
        try (Session session = sf.openSession()) {
            Transaction tr = session.beginTransaction();
            session.persist(user);
            
            compte.setIdUsers(user.getIdUsers());
            
            session.persist(compte);

            tr.commit();
        }
    }
    
    public Compte verifierCoordonnees(String login, String pwd) {
    	Compte compte = null;
    	
    	try (Session session = sf.openSession()) {
    		Transaction tr = session.beginTransaction();
    		
    		String hql = "FROM Compte WHERE login = :login AND pwd = :pwd";
    		Query query = session.createQuery(hql);
    		query.setParameter("login", login);
    		query.setParameter("pwd", pwd);
    		
    		List<Compte> compteList = query.list();
    		
    		if(!compteList.isEmpty()) {
    			compte = compteList.get(0);
    		}
    		
    		tr.commit();
    	} catch (HibernateException e) {
    		e.printStackTrace();
    	}
    	
    	return compte;
    }
}
