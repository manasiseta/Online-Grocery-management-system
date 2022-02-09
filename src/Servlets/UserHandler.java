package Servlets;

import java.io.IOException;
import java.util.ArrayList;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import usersDAO.CartDAO;
import usersDAO.OrdersDAO;
import usersDAO.ProductsDAO;
import usersDAO.UsersDAO;
import Entity.Cart;
import Entity.Order;
import Entity.Product;
import Entity.User;

@WebServlet("/UserHandler")
public class UserHandler extends HttpServlet {
	private static final long serialVersionUID = 1L;
	public String path = "images/";
	List<String> products = new ArrayList<String>();
	int totalCost=0;

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String action = request.getParameter("action");
		switch(action) {
		case "login":
			loginForm(request,response);
			break;
		case "checkoutForm":
			String username = request.getParameter("username");
			checkoutForm(request,response,username);
			break;
		case "deleteCart":
			deleteCart(request,response);
			break;
		case "viewProfile":
			viewProfile(request,response);
		    break;
		}
	}
private void viewProfile(HttpServletRequest request, HttpServletResponse response)throws ServletException, IOException {
		String username = request.getParameter("username");
		List<Order> orders = new OrdersDAO().getOrder(username);
		User user = new UsersDAO().getUser(username);
		request.setAttribute("orders", orders);
		request.setAttribute("user", user);
		request.getRequestDispatcher("viewProfile.jsp").forward(request, response);
	}
private void placeOrder(HttpServletRequest request, HttpServletResponse response)throws ServletException, IOException  {
	String username = request.getParameter("username");
	new CartDAO().deleteCart(username);
	homePage(request, response, username);
		
	}
private void checkout(HttpServletRequest request, HttpServletResponse response)throws ServletException, IOException  {
	   
	    String username = request.getParameter("username");
	    String address = request.getParameter("address");
	    String zip = request.getParameter("zip");
		Order order = new OrdersDAO().checkout(username,address,zip);
		request.setAttribute("order", order);
		request.setAttribute("username", username);
		request.getRequestDispatcher("placeOrder.jsp").forward(request, response);
	}
private void deleteCart(HttpServletRequest request, HttpServletResponse response)throws ServletException, IOException {
	    String username = request.getParameter("username");
		int id = Integer.parseInt(request.getParameter("id"));
		new CartDAO().deleteItem(id);
		checkoutForm(request,response,username);
	}
private void checkoutForm(HttpServletRequest request, HttpServletResponse response,String username)throws ServletException, IOException {
	 
	List<Cart> cart = new CartDAO().listCartItems(username);
	request.setAttribute("cart", cart);
	request.setAttribute("path", path);
	request.setAttribute("username", username);
	request.getRequestDispatcher("checkout.jsp").forward(request, response);
		
	}
private void addToCart(HttpServletRequest request, HttpServletResponse response)throws ServletException, IOException  {
		String username = request.getParameter("username");
		String pName = request.getParameter("pName");
		int pQuantity = Integer.parseInt(request.getParameter("quantity"));
		int productId = Integer.parseInt(request.getParameter("productId"));
		int pPrice = Integer.parseInt(request.getParameter("pPrice"));
		String cImg = request.getParameter("pImg");
		new CartDAO().addToCart(username,pName,pQuantity,pPrice,productId,cImg);	
		homePage(request,response,username);
	}
private void authenticate(HttpServletRequest request, HttpServletResponse response)throws ServletException, IOException {
    String username = request.getParameter("username");
    String password = request.getParameter("password");
   
    if (new UsersDAO().validate(username, password)) {
        homePage(request,response,username);
    } else {
    	request.getSession().setAttribute("errorMessage2", "*Incorrect username or password.");
        request.getRequestDispatcher("SignUpsignIn.jsp").forward(request, response);
    }
		
	}
private void homePage(HttpServletRequest request, HttpServletResponse response,String username)throws ServletException, IOException{
	 List<Product> products = new ProductsDAO().listProducts();
	 request.setAttribute("username", username);
 	request.setAttribute("products", products);
 	request.setAttribute("path", path);
	 request.getRequestDispatcher("landing.jsp").forward(request, response);
}
private void loginForm(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException{
		request.getRequestDispatcher("SignUpsignIn.jsp").forward(request, response);
		
	}



	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		String action = request.getParameter("action");
		switch(action) {
		case "authenticate":
			try {
	            authenticate(request, response);
	        } catch (Exception e) {
	            // TODO Auto-generated catch block
	            e.printStackTrace();
	        }
			break;
		case "addUser":
			addUser(request,response);
			break;
		case "addToCart":
			addToCart(request,response);
			break;
		case "placeOrder":
			placeOrder(request,response);
			break;
		case "checkout":
			checkout(request,response);
			break;
		}	
	
		
	}
	private void addUser(HttpServletRequest request, HttpServletResponse response)throws ServletException, IOException  {
		
		String username = request.getParameter("username");
		String password = request.getParameter("password");
		String email = request.getParameter("email");
		String phone_no = request.getParameter("phone_no");
		
		boolean val = new UsersDAO().addNewUser(username,password,email,phone_no);
		request.getSession().removeAttribute("errorMessage");
		if (val == false) {
			homePage(request,response,username);
		}else {
			request.getSession().setAttribute("errorMessage", "*This username already exists.Enter another name.");
			response.sendRedirect(request.getContextPath()+"/SignUpsignIn.jsp");
		}
		
	}
		
	}


