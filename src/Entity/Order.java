package Entity;
import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.Id;
import javax.persistence.Table;

@Entity(name="orders")
@Table(name = "orders")


public class Order {
	@Id
	@Column(name = "order_id")
	private int orderId;
	
	@Column(name="name")
	private String name;
	
	@Column(name="Address")
	private String Address;
	
	@Column(name="products")
	private String products;

	@Column(name="total_cost")
	private int totalCost;
	
	@Column(name="zip")
	private String zip;
	
	public Order() {
	
	}

	public Order(String name, String address) {
		this.name = name;
		Address = address;
	}
	

	public Order(String name, String products, int totalCost) {
		this.name = name;
		this.products = products;
		this.totalCost = totalCost;
	}
	

	public Order(String name, String address, String products, int totalCost) {
		super();
		this.name = name;
		Address = address;
		this.products = products;
		this.totalCost = totalCost;
	}
	

	public Order(String name, String address, String products, int totalCost, String zip) {
		super();
		this.name = name;
		Address = address;
		this.products = products;
		this.totalCost = totalCost;
		this.zip = zip;
	}

	public int getOrderId() {
		return orderId;
	}

	public void setOrderId(int orderId) {
		this.orderId = orderId;
	}

	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}

	public String getAddress() {
		return Address;
	}

	public void setAddress(String address) {
		Address = address;
	}

	public String getProducts() {
		return products;
	}

	public void setProducts(String products) {
		this.products = products;
	}

	public int getTotalCost() {
		return totalCost;
	}

	public void setTotalCost(int totalCost) {
		this.totalCost = totalCost;
	}
	

	public String getZip() {
		return zip;
	}

	public void setZip(String zip) {
		this.zip = zip;
	}

	@Override
	public String toString() {
		return "Order [orderId=" + orderId + ", name=" + name + ", Address=" + Address + ", products=" + products
				+ ", totalCost=" + totalCost + "]";
	}
	

}
