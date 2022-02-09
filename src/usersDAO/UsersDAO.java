package usersDAO;

import java.util.List;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.Transaction;
import org.hibernate.cfg.Configuration;

import Entity.Product;
import Entity.User;

//SessionFactory is an interface. SessionFactory can be created by providing Configuration object,
//which will contain all DB related property details pulled from either hibernate.cfg.xml file or
//hibernate.properties file. SessionFactory is a factory for Session objects.

public class UsersDAO {
	SessionFactory factory = new Configuration()
            .configure("hibernate.cfg.xml")
            .addAnnotatedClass(User.class)
            .buildSessionFactory();


	public boolean validate(String username, String password) {
		Session session = factory.getCurrentSession();
		session.beginTransaction();
		User user = session.get(User.class, username);

        if (user != null && user.getPassword().equals(password)) {
                return true;
        }
        session.close();
		return false;
	}


	public boolean addNewUser(String username, String password, String email, String phone_no) {
		Session session = factory.getCurrentSession();
		User user = new User(username, password, email, phone_no);
		
		session.beginTransaction();
		try {
		User user1 = session.get(User.class, username);
		if(user1.getUsername()!=null) {
			if(user1.getUsername().equals(user.getUsername())) {
				return true;
			}
		}
		}catch(Exception e) {
			
		}
		session.save(user);
		session.getTransaction().commit();
		session.close();
		return false;
		
	}
	public List<User> listUsers(){
		Session session = factory.getCurrentSession();
		session.beginTransaction();
		List<User> users =  session.createQuery("from user").getResultList();
		//session.getTransaction().commit();
		session.close();
		return users ;
	}
	
   public User getUser(String username) {
	   Session session = factory.getCurrentSession();
	   session.beginTransaction();
	   User user = session.get(User.class, username);
	   session.close();
	   return user;
   }

}
