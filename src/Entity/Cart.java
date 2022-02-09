package Entity;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.Id;
import javax.persistence.Table;

@Entity(name="cart_items")
@Table(name = "cart_items")


public class Cart {
	
	@Id
	@Column(name = "sr_no")
	private int srNo;
	
	@Column(name="username")
	private String username;
	
	@Column(name="product")
	private String product;
	
	@Column(name="quantity")
	private int quantity;

	@Column(name="price")
	private int price;
	
	@Column(name="instock")
	private String instock;
	
	@Column(name="c_img")
	private String cImg;

	public Cart() {
		
	}

	public Cart(String username, String product, int quantity, int price) {
		this.username = username;
		this.product = product;
		this.quantity = quantity;
		this.price = price;
	}
    
	public Cart(String username, String product, int quantity, int price, String instock) {
		
		this.username = username;
		this.product = product;
		this.quantity = quantity;
		this.price = price;
		this.instock = instock;
	}
	

	public Cart(String username, String product, int quantity, int price, String instock, String cImg) {
		
		this.username = username;
		this.product = product;
		this.quantity = quantity;
		this.price = price;
		this.instock = instock;
		this.cImg = cImg;
	}

	public String getUsername() {
		return username;
	}

	public void setUsername(String username) {
		this.username = username;
	}

	public String getProduct() {
		return product;
	}

	public void setProduct(String product) {
		this.product = product;
	}

	public int getQuantity() {
		return quantity;
	}

	public void setQuantity(int quantity) {
		this.quantity = quantity;
	}

	public int getPrice() {
		return price;
	}

	public void setPrice(int price) {
		this.price = price;
	}

	public int getSrNo() {
		return srNo;
	}

	public void setSrNo(int srNo) {
		this.srNo = srNo;
	}

	public String getInstock() {
		return instock;
	}

	public void setInstock(String instock) {
		this.instock = instock;
	}

	public String getcImg() {
		return cImg;
	}

	public void setcImg(String cImg) {
		this.cImg = cImg;
	}
}
