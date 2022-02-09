package Entity;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.Id;
import javax.persistence.Table;

@Entity(name="products")
@Table(name = "products")

public class Product {
	
	@Id
	@Column(name = "product_id")
	private int productId;
	
	@Column(name="p_name")
	private String pName;
	
	@Column(name="p_price")
	private String pPrice;
	
	@Column(name="p_quantity")
	private int pQuantity;
	
	@Column(name="p_img")
	private String pImg;
	
	@Column(name="Category")
	private String Category;

	public Product() {
		
	}
	

	public Product(String pImg) {
		this.pImg = pImg;
	}


	public Product(String pName, String pPrice, int pQuantity, String pImg) {
		
		this.pName = pName;
		this.pPrice = pPrice;
		this.pQuantity = pQuantity;
		this.pImg = pImg;
	}
	

	public Product(String pName, String pPrice, int pQuantity, String pImg, String category) {
		
		this.pName = pName;
		this.pPrice = pPrice;
		this.pQuantity = pQuantity;
		this.pImg = pImg;
		Category = category;
	}


	public int getProductId() {
		return productId;
	}

	public void setProductId(int productId) {
		this.productId = productId;
	}

	public String getpName() {
		return pName;
	}

	public void setpName(String pName) {
		this.pName = pName;
	}

	public String getpPrice() {
		return pPrice;
	}

	public void setpPrice(String pPrice) {
		this.pPrice = pPrice;
	}

	public int getpQuantity() {
		return pQuantity;
	}

	public void setpQuantity(int pQuantity) {
		this.pQuantity = pQuantity;
	}

	public String getpImg() {
		return pImg;
	}

	public void setpImg(String pImg) {
		this.pImg = pImg;
	}


	public String getCategory() {
		return Category;
	}


	public void setCategory(String category) {
		Category = category;
	}

}
