<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ page import="Entity.Product"%>
<%@ page import="Entity.User"%>
<%@ page import="Entity.Order"%>
<%@ page import="java.util.List"%>
<%@ page import="java.util.ArrayList"%>
<%@ page import="java.util.Arrays"%>
<!DOCTYPE html><!--  This site was created in Webflow. http://www.webflow.com  -->
<!--  Last Published: Sun May 09 2021 12:58:03 GMT+0000 (Coordinated Universal Time)  -->
<html data-wf-page="6097dc4f0e5a87041333576e" data-wf-site="60965450b489e80c7b08c0b5">
<head>
  <meta charset="utf-8">
  <title>The Local Grocery</title>
  <meta content="Admindash final" property="og:title">
  <meta content="Admindash final" property="twitter:title">
  <meta content="width=device-width, initial-scale=1" name="viewport">
  <meta content="Webflow" name="generator">
  <link href="css/normalize1.css" rel="stylesheet" type="text/css">
  <link href="css/webflow1.css" rel="stylesheet" type="text/css">
  <link href="css/manishs-exceptional-proje-1f562df465911.webflow.css" rel="stylesheet" type="text/css">
  <script src="https://ajax.googleapis.com/ajax/libs/webfont/1.6.26/webfont.js" type="text/javascript"></script>
  <script type="text/javascript">WebFont.load({  google: {    families: ["Varela:400","Karla:regular,700"]  }});</script>
  <!-- [if lt IE 9]><script src="https://cdnjs.cloudflare.com/ajax/libs/html5shiv/3.7.3/html5shiv.min.js" type="text/javascript"></script><![endif] -->
  <script type="text/javascript">!function(o,c){var n=c.documentElement,t=" w-mod-";n.className+=t+"js",("ontouchstart"in o||o.DocumentTouch&&c instanceof DocumentTouch)&&(n.className+=t+"touch")}(window,document);</script>
    <link href="images/favicon.png" rel="shortcut icon" type="image/x-icon">
<link href="images/webclip.png" rel="apple-touch-icon">
</head>
<body>
  <div class="page-wrapper">
    <div class="top-nav">
     <!--<a href="#" class="logo-link w-nav-brand">  --> 
      <img src="images/The-Local-Grocery-logos_black.png" loading="lazy" width="221" sizes="221px" srcset="images/The-Local-Grocery-logos_black-p-500.png 500w, images/The-Local-Grocery-logos_black-p-800.png 800w, images/The-Local-Grocery-logos_black.png 893w" alt="" class="image">
      <!--</a>  -->
      <a href="${pageContext.request.contextPath}/Admin?action=login" class="button-2 w-button">Logout</a>
    </div>
    <div data-duration-in="300" data-duration-out="100" class="tabs w-tabs">
      <div class="navigation-menu w-tab-menu">
        <a data-w-tab="Tab 1" class="navigation-item w-inline-block w-tab-link">
          <div class="navigation-icon"><img src="images/icons8-purchase-order-64_1icons8-purchase-order-64.png" loading="lazy" alt="" class="image-3"></div>
          <div class="text-block-5">Orders</div>
        </a>
        <a data-w-tab="Tab 9" class="navigation-item w-inline-block w-tab-link">
          <div class="navigation-icon"><img src="images/icons8-in-inventory-50_1icons8-in-inventory-50.png" loading="lazy" alt="" class="image-4"></div>
          <div class="text-block-4">Inventory</div>
        </a>
        <a data-w-tab="Tab 2" class="navigation-item w-inline-block w-tab-link w--current">
          <div class="navigation-icon"><img src="images/icons8-add-image-24_1icons8-add-image-24.png" loading="lazy" alt="" class="image-5"></div>
          <div class="text-block">Add Items</div>
        </a>
        <a data-w-tab="Tab 3" class="navigation-item w-inline-block w-tab-link">
          <div class="navigation-icon"><img src="images/icons8-admin-settings-male-24_1icons8-admin-settings-male-24.png" loading="lazy" alt="" class="image-6"></div>
          <div class="text-block-3">Users</div>
        </a>
      </div>
      <div class="dash-tab-wrapper w-tab-content">
      <div data-w-tab="Tab 1" class="dashboard-section w-tab-pane">
      <% List<Order> orders = (List<Order>) request.getAttribute("orders"); %>
      <%
            int i=1;
             for(Order order:orders){
            	 out.print("<div class='container-4 w-container'>"
            			 +"<div class='w-layout-grid grid-7'>"
            			 +"<div class='div-block-3'>"
            			 +"<h4 class='heading-14'>OrderID:</h4>"
            			 +" <h5>"+order.getOrderId()+"</h5>"
            			 +"</div>"
            			 +"<div class='div-block-4'>"
            			 +" <h4 class='heading-15'>Name:</h4>"
            			 +" <h5>"+order.getName()+"</h5>"
            			 +"</div>"
            			 +"<div class='div-block-5'>"
            			 +"<h4 class='heading-16'>Address:</h4>"
            			 +" <h5>"+order.getAddress()+"</h5>"
            			 +" </div>"
            			 +"<div>"
            			 +" <h4 class='heading-17'>Products:</h4>"
            			 +"<div class='w-layout-grid grid-8'>"
            			 );
               List<String> products = new ArrayList<String>();
          	   String str[] = order.getProducts().split(",");
          	   products = Arrays.asList(str);
          	   int j=1;
          	   for(String product:products){
          		   out.print("<div id='w-node-_4aefcdb0-674a-0eaf-4760-acadd0c4a9e8-c855cc4a' class='div-block-2'>"
          				   +"<div>"+j+".</div>"
                           +"<div>"+product+"</div>"
                           +"</div>"
          				   );
          		   j++;
          	   }
          	   out.print("</div></div>"
          			   +"<div class='div-block-6'>"
          			   +"<h4 class='heading-18'>Total Cost:</h4>"
                       +"<div>"
                       +"<h5>"+order.getTotalCost()+"</h5>"
                       +"</div>"
                       +"</div>"
                       +"<div>"
                       +"<h4 class='heading-19'>Status:</h4>"
                       +"<div class='w-layout-grid grid'>"
                       +"<div id='w-node-_38b6ac54-ad0d-b154-0f30-012a5ee98920-c855cc4a' class='form-block-2 w-form'>"
                       +"<form id='email-form-2' name='email-form-2' data-name='Email Form 2' class='form-2'><label class='w-checkbox checkbox-field'><input type='checkbox' id='checkbox' name='checkbox' data-name='Checkbox' class='w-checkbox-input'><span class='w-form-label'>Delivered/Not Delivered</span>"
                       +"</label></form>"
                       +"</div>"
          			  +"</div></div></div></div>" );
             }
             %>
  
        </div>

        <div data-w-tab="Tab 9" class="dashboard-section w-tab-pane">
          <div class="w-container">
            <div class="w-layout-grid grid-3">
              <h4 class="heading-2">ID</h4>
              <h4 class="heading-3">Name</h4>
              <h4 class="heading-4">Price</h4>
              <h4 class="heading-5">Quantity</h4>
             <!-- <h4 class="heading-6">Image</h4> --> 
              <h4 class="heading-7">Update</h4>
              <h4 class="heading-8">Delete</h4>
            </div>
            <%
					List<Product> products = (List<Product>) request.getAttribute("products");
					String path = (String) request.getAttribute("path");
					for (Product product : products) {
						out.print("<div class='w-layout-grid grid-2'>" + "<h6>" + product.getProductId() + "</h6>" + "<h6>"
						+ product.getpName() + "</h6>" + "<h6>Rs. " + product.getpPrice() + "</h6>" + "<h6>"
						+ product.getpQuantity() + "</h6>"
						//+"<img src=" + path +product.getpImg() +" loading='lazy' alt=''>"
						+ "<a href="+request.getContextPath()+"/Admin?action=editForm&id="+product.getProductId()+" class='link'>Edit</a>"
						+ "<a href="+request.getContextPath()+"/Admin?action=delete&id="+product.getProductId()+" class='button-5 w-button'>Delete</a>"
						+ "</div>");
					}
					%>

          </div>
        </div>
        <div data-w-tab="Tab 2" class="dashboard-section w-tab-pane w--tab-active">
          <div>
            <div class="form-block w-form">
              <form id="email-form" name="email-form" data-name="Email Form" class="form" method="post" action="${pageContext.request.contextPath}/Admin?action=addProduct" enctype="multipart/form-data">
              
              <label for="product_name" id="w-node-_6e0fb44a-510a-cf44-3e61-b7bf98c325fd-1333576e">Product Name</label>
              <input type="text" class="w-input" maxlength="256" name="pName" data-name="pName" placeholder="Product Name" id="product_name" required>
              <label for="product_price" id="w-node-fc2e5e8b-a4f7-badd-bb71-caeeb65daa05-1333576e">Product Price</label>
              <input type="number" class="w-input" maxlength="256" name="pPrice" data-name="product_price" placeholder="Product Price" id="product_price" required>
              <label for="product_quantity" id="w-node-fe49d7fb-b40a-20e9-bb52-4a32922bf90d-1333576e">Product Quantity</label>
              <input type="number" class="w-input" maxlength="256" name="pQuantity" data-name="product_quantity" placeholder="Product Quantity" id="product_quantity" required>
              <label for="product_price" id="w-node-fc2e5e8b-a4f7-badd-bb71-caeeb65daa05-1333576e">Product Category</label>
              <input type="text" class="w-input" maxlength="256" name="Category" data-name="pName" placeholder="Product Category" id="product_name" required>
              <label class="div-block-7" id="w-node-_75bb77c7-be13-4f63-124e-66bb325ebb46-c855cc4a">Image</label>
              
              <input type="file" class="w-input" id="img" name="pImg" accept="image/*" required>
              <input type="submit" value="Submit" data-wait="Please wait..." id="w-node-fc2e5e8b-a4f7-badd-bb71-caeeb65daa08-1333576e" class="w-button">
              
              </form>
            
            </div>
          </div>
        </div>
        <div data-w-tab="Tab 3" class="dashboard-section w-tab-pane">
          <div class="w-container">
            <div class="w-layout-grid grid-4">
              <h4 class="heading-9">username</h4>
              <h4 class="heading-11">Email</h4>
              <h4 class="heading-12">Phone</h4>
            </div>
            <%
					List<User> users = (List<User>) request.getAttribute("users");
					for (User user : users) {
						out.print("<div class='w-layout-grid grid-5'>" + "<h5>" + user.getUsername() + "</h5>" + "<h5>" + user.getEmail()
						+ "</h5>" + "<h5>" + user.getPhoneNo() + "</h5>" + "</div>");
					}
					%>
          </div>
        </div>
      </div>
    </div>
  </div>
  <script src="https://d3e54v103j8qbb.cloudfront.net/js/jquery-3.5.1.min.dc5e7f18c8.js?site=60965450b489e80c7b08c0b5" type="text/javascript" integrity="sha256-9/aliU8dGd2tb6OSsuzixeV4y/faTqgFtohetphbbj0=" crossorigin="anonymous"></script>
  <script src="js/webflow1.js" type="text/javascript"></script>

</body>
</html>