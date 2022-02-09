package usersDAO;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.cfg.Configuration;

import Entity.Admin;
import Entity.User;

public class AdminDAO {
	
	SessionFactory factory = new Configuration()
            .configure("hibernate.cfg.xml")
            .addAnnotatedClass(Admin.class)
            .buildSessionFactory();


	public boolean validate(String email, String password) {
		Session session = factory.getCurrentSession();
		session.beginTransaction();
		Admin user = session.get(Admin.class, email);

        if (user != null && user.getPassword().equals(password)) {
                return true;
        }
		return false;
	}

}
