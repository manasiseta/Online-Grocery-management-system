<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ page import="Entity.Product"%>
<%@ page import="Entity.User"%>
<%@ page import="Entity.Order"%>
<%@ page import="java.util.List"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.6.0/dist/css/bootstrap.min.css" integrity="sha384-B0vP5xmATw1+K9KRQjQERJvTumQW0nPEzvF6L/Z6nronJ3oUOFUFpCjEUQouq2+l" crossorigin="anonymous">

<title>Home</title>
</head>
<body>
<%String username = (String) request.getAttribute("username"); %>
<nav class="navbar navbar-expand-lg navbar-dark bg-dark">
  <a class="navbar-brand" href="#">Local Grocery</a>
  <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarNav" aria-controls="navbarNav" aria-expanded="false" aria-label="Toggle navigation">
    <span class="navbar-toggler-icon"></span>
  </button>
  <div class="collapse navbar-collapse" id="navbarNav">
    <ul class="navbar-nav">
      <li class="nav-item active">
        <a class="nav-link" href="${pageContext.request.contextPath}/UserHandler?action=checkoutForm&username=${username}">Checkout <span class="sr-only">(current)</span></a>
      </li>
      <li class="nav-item">
        <a class="nav-link" href="#">Features</a>
      </li>
      <li class="nav-item">
        <a class="nav-link" href="#">Pricing</a>
      </li>
      <li class="nav-item">
        <a class="nav-link disabled" href="#" tabindex="-1" aria-disabled="true">Disabled</a>
      </li>
    </ul>
  </div>
</nav>
<div class="container-fluid">
<div class="row">

<% List<Product> products = (List<Product>) request.getAttribute("products");
   String path = (String) request.getAttribute("path");
   for(Product product:products){
	   out.print("<div class='col-lg-3'>");
	   out.print("<form action='"+request.getContextPath()+"/UserHandler?action=addToCart' method='post'><div class='card p-3 shadow' style='width: 18rem;'>");
	   out.print("<img src=" + path +product.getpImg()+" class='card-img-top' >");
	   out.print(" <div class='card-body'>");
	   out.print("<h5 class='card-title'>"+product.getpName()+"</h5>");
	   out.print("<p class='card-text'>"+"<select class='custom-select' id='inputGroupSelect01' name='quantity'>"
	    +"<option selected>Quantity</option>"
	    +"<option >1</option>"
	    +"<option >2</option>"
	    +"<option >3</option>"
	    +"</select>"
	    +"</p>"
	    +"<p class='card-text'>Rs. "+product.getpPrice()+"</p>"
	    +"<input type='hidden' name='pName' value='"+ product.getpName()+"' >"
	    +"<input type='hidden' name='productId' value='"+ product.getProductId()+"' >"
	    +"<input type='hidden' name='username' value='"+username+"'>"
	    +"<input type='hidden' name='pPrice' value='"+product.getpPrice()+"'>"
	    +" <input type='submit' value='Add to Cart' class='btn btn-primary'>"
	    
	    +" </div></div></form></div>");
   }

   

%>
</div>
</div>
</body>
</html>