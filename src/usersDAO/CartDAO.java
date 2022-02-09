package usersDAO;

import java.util.ArrayList;
import java.util.List;

import org.hibernate.Criteria;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.cfg.Configuration;
import org.hibernate.criterion.Restrictions;

import Entity.Cart;
import Entity.Product;
public class CartDAO {
	SessionFactory factory = new Configuration()
            .configure("hibernate3.cfg.xml")
            .addAnnotatedClass(Cart.class)
            .buildSessionFactory();
	
	public void addToCart(String username,String product,int quantity,int price,int productId,String cImg) {
		Session session = factory.getCurrentSession();
		session.beginTransaction();
		int pQuantity = new ProductsDAO().cart(productId);
		if(quantity < pQuantity) {
			Cart cart = new Cart(username, product, quantity, price,"instock",cImg);
			session.save(cart);
		}else {
			Cart cart = new Cart(username, product, quantity, price,"outofstock",cImg);
			session.save(cart);
		}
		session.getTransaction().commit();
		session.close();
	}

	public List<Cart> listCartItems(String username) {
		Session session = factory.getCurrentSession();
		session.beginTransaction();
//		List<Cart> carts = new ArrayList<Cart>(); 
//		Cart cart = new Cart();
//		while(cart!=null) {
//			cart = session.get(Cart.class, srNo);
//			carts.add(cart);
//		}
		Criteria criteria = session.createCriteria(Cart.class);
		List<Cart> carts = criteria.add(Restrictions.eq("username", username)).list();
        
		session.getTransaction().commit();
		session.close();
		return carts ;
	}

	public void deleteItem(int id) {
		Session session = factory.getCurrentSession();
		session.beginTransaction();
		Cart cart = session.get(Cart.class,id);
		session.delete(cart);
		session.getTransaction().commit();
		session.close();
	}

	public void deleteCart(String username) {
		try {
			System.out.println("in delete Cart");
			int id;
			Session session = factory.openSession();
			session.beginTransaction();
			Criteria criteria = session.createCriteria(Cart.class);
			List<Cart> carts = criteria.add(Restrictions.eq("username", username)).list();
			for(Cart cart:carts) {
				
				id = cart.getSrNo();
				deleteItem(id);
			}
			session.close();
		}catch(Exception e) {
			e.printStackTrace();
		}
		
}
}
