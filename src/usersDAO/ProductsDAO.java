package usersDAO;

import java.util.List;

import org.hibernate.Criteria;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.cfg.Configuration;
import org.hibernate.criterion.Restrictions;

import Entity.Product;

public class ProductsDAO {
	
	SessionFactory factory = new Configuration()
            .configure("hibernate2.cfg.xml")
            .addAnnotatedClass(Product.class)
            .buildSessionFactory();
	
	public void addProduct(String pName, String pPrice, int pQuantity, String pImg,String Category) {
		Session session = factory.getCurrentSession();
		Product product = new Product(pName, pPrice, pQuantity, pImg,Category);
		session.beginTransaction();
		session.save(product);
		session.getTransaction().commit();
		session.close();
	}
	public void updateProduct(int productId, String pPrice, int pQuantity) {
		Session session = factory.getCurrentSession();
		session.beginTransaction();
		Product product = session.get(Product.class, productId);
		product.setpPrice(pPrice);
		product.setpQuantity(pQuantity);
		session.getTransaction().commit();
		session.close();
	}
	public void deleteProduct(int productId) {
		Session session = factory.getCurrentSession();
		session.beginTransaction();
		Product product = session.get(Product.class, productId);
		session.delete(product);
		session.getTransaction().commit();
		session.close();
		
		}
	public List<Product> listProducts(){
		Session session = factory.getCurrentSession();
		session.beginTransaction();
		List<Product> products =  session.createQuery("from products").getResultList();
		//session.getTransaction().commit();
		session.close();
		return products ;
	}
	public int cart(int productId) {
		Session session = factory.getCurrentSession();
		session.beginTransaction();
		Product product = session.get(Product.class, productId);
		session.getTransaction().commit();
		session.close();
		return product.getpQuantity();
	}
	public void inventoryUpdate(String product,int Quantity) {
		Session session = factory.getCurrentSession();
		session.beginTransaction();
		
		Criteria criteria = session.createCriteria(Product.class);
		Product product1 = (Product) criteria.add(Restrictions.eq("pName", product))
		                             .uniqueResult();
		int pQuantity = product1.getpQuantity()-Quantity;
		product1.setpQuantity(pQuantity);
		session.getTransaction().commit();
		session.close();
	}
}
