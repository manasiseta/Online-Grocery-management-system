package Servlets;

import java.io.File;
import java.io.IOException;
import java.io.InputStream;
import java.nio.file.Paths;
import java.util.List;
import java.util.stream.Collectors;

import javax.servlet.ServletException;
import javax.servlet.annotation.MultipartConfig;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.Part;

import org.apache.commons.fileupload.FileItem;
import org.apache.commons.fileupload.disk.DiskFileItemFactory;
import org.apache.commons.fileupload.servlet.ServletFileUpload;

import Entity.Order;
import Entity.Product;
import Entity.User;
import usersDAO.AdminDAO;
import usersDAO.OrdersDAO;
import usersDAO.ProductsDAO;
import usersDAO.UsersDAO;

@MultipartConfig
@WebServlet("/Admin")
public class AdminHandler extends HttpServlet {
	private static final long serialVersionUID = 1L;
	public String path = "images/";
	
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String action = request.getParameter("action");
		switch(action) {
		case "delete":
			int id = Integer.parseInt(request.getParameter("id"));
			deleteProduct(request,response,id);
			break;
		case "editForm":
			String id2 = request.getParameter("id");
			editForm(request,response,id2);
			break;
		case "login":
			login(request,response);
			break;
		}
	}

	private void login(HttpServletRequest request, HttpServletResponse response)throws ServletException, IOException  {
		request.getRequestDispatcher("adminForm.jsp").forward(request, response);
		
	}

	private void editForm(HttpServletRequest request, HttpServletResponse response,String id)throws ServletException, IOException {
		request.setAttribute("id", id);
		request.getRequestDispatcher("edit.jsp").forward(request, response);
		
	}

	private void deleteProduct(HttpServletRequest request, HttpServletResponse response,int id) throws ServletException, IOException {
		new ProductsDAO().deleteProduct(id);
		adminPage(request,response);
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

		String action = request.getParameter("action");
		switch(action) {
		case "authenticate":
			authenticate(request,response);
			break;
		case "addProduct":
			addProduct(request,response);
			adminPage(request,response);
			break;
		case "editProducts":
			int id = Integer.parseInt(request.getParameter("id"));
			editProducts(request,response,id);
			adminPage(request,response);
		}
	}
   private void editProducts(HttpServletRequest request, HttpServletResponse response, int id)throws ServletException, IOException{
		String pPrice = request.getParameter("pPrice");
		int pQuantity = Integer.parseInt(request.getParameter("pQuantity"));
		new ProductsDAO().updateProduct(id, pPrice, pQuantity);
		
	}

	private void addProduct(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String pName = request.getParameter("pName");
		String pPrice = request.getParameter("pPrice");
		int pQuantity = Integer.parseInt(request.getParameter("pQuantity"));
		String Category = request.getParameter("Category");
		ServletFileUpload upload = new ServletFileUpload(new DiskFileItemFactory());

		try {
			List<Part> fileParts = request.getParts().stream().filter(part -> "pImg".equals(part.getName()) && part.getSize() > 0).collect(Collectors.toList()); // Retrieves <input type="file" name="file" multiple="true">

		    for (Part filePart : fileParts) {
		        String fileName = Paths.get(filePart.getSubmittedFileName()).getFileName().toString(); // MSIE fix
		        System.out.println(fileName);
		        File file = new File(path + fileName);
		        new ProductsDAO().addProduct(pName, pPrice, pQuantity, fileName,Category);
		     
		    }
		}catch(Exception e) {
			e.printStackTrace();
		}
		
	}

	private void authenticate(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String email = request.getParameter("email");
	    String password = request.getParameter("password");
	    if (new AdminDAO().validate(email, password)) {
	        adminPage(request,response);
	    } else {
	        request.getRequestDispatcher("adminForm.jsp").forward(request, response);
	    }
		
	}

	private void adminPage(HttpServletRequest request, HttpServletResponse response)throws ServletException, IOException {
		
		List<Product> products = new ProductsDAO().listProducts();
		request.setAttribute("products", products);
		request.setAttribute("path", path);
		List<User> users = new UsersDAO().listUsers();
		request.setAttribute("users", users);
		List<Order> orders = new OrdersDAO().listOrders();
		request.setAttribute("orders", orders);
		request.getRequestDispatcher("adminDashboard.jsp").forward(request, response);
	}

}
