package Entity;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.Id;
import javax.persistence.Table;

@Entity(name="user")
@Table(name = "user")

public class User {
	
	@Id
	@Column(name = "username")
	private String username;
	
	@Column(name="password")
	private String password;
	
	@Column(name="email")
	private String email;
	
	@Column(name="phone_no")
	private String phoneNo;
	

	public User() {
	
	}
	
	public User(String username, String password) {
		super();
		this.username = username;
		this.password = password;
	}

	public User(String username, String password, String email, String phoneNo) {
		super();
		this.username = username;
		this.password = password;
		this.email = email;
		this.phoneNo = phoneNo;

	}

	public String getUsername() {
		return username;
	}

	public void setUsername(String username) {
		this.username = username;
	}

	public String getPassword() {
		return password;
	}

	public void setPassword(String password) {
		this.password = password;
	}

	public String getEmail() {
		return email;
	}

	public void setEmail(String email) {
		this.email = email;
	}

	public String getPhoneNo() {
		return phoneNo;
	}

	public void setPhoneNo(String phoneNo) {
		this.phoneNo = phoneNo;
	}



}
