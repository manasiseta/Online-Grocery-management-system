package usersDAO;
import java.util.List;

import org.hibernate.Criteria;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.cfg.Configuration;
import org.hibernate.criterion.Restrictions;

import Entity.Cart;
import Entity.Order;
import Entity.Product;

public class OrdersDAO {
	SessionFactory factory = new Configuration()
            .configure("hibernate3.cfg.xml")
            .addAnnotatedClass(Order.class)
            .buildSessionFactory();
	
	public List<Order> listOrders(){
		Session session = factory.getCurrentSession();
		session.beginTransaction();
		List<Order> orders = session.createQuery("from orders").getResultList();
		//session.getTransaction().commit();
		session.close();
		return orders ;
	}
	public List<Order> getOrder(String username){
		Session session = factory.getCurrentSession();
		session.beginTransaction();
		Criteria criteria = session.createCriteria(Order.class);
		List<Order> orders = criteria.add(Restrictions.eq("name", username)).list();
		session.close();
		return orders;
	}

	public Order checkout(String username,String address,String zip) {
		List<Cart> carts = new CartDAO().listCartItems(username);
		StringBuffer productss = new StringBuffer();
		int totalCost=0;
		Session session = factory.getCurrentSession();
		session.beginTransaction();
		for(Cart cart:carts) {
			  String product = cart.getProduct();
			  new ProductsDAO().inventoryUpdate(product,cart.getQuantity());
			  productss.append(product);
			  productss.append(",");
			  totalCost += cart.getPrice()*cart.getQuantity();
		}
		 String products = productss.toString();
		 Order order = new Order(username, address, products, totalCost,zip);
		 session.save(order);
		 session.getTransaction().commit();
		 session.close();
	     return order;
	}

	public void updateAddress(int orderId, String address) {
		Session session = factory.getCurrentSession();
		session.beginTransaction();
		System.out.println("in order dao");
		Order order = session.get(Order.class, orderId);
	    System.out.println(order.getTotalCost()+address);
		order.setAddress(address);
		System.out.println(order.getName());
		session.beginTransaction().commit();
		session.close();
	}
}
