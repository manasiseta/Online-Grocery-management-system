<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ page import="Entity.Product"%>
<%@ page import="Entity.User"%>
<%@ page import="Entity.Order"%>
<%@ page import="java.util.List"%>

<!DOCTYPE html>
<html data-wf-page="609d1dc4d7c79f01fc73f206" data-wf-site="609d1dc4d7c79ff44a73f205">
<head>
  <meta charset="utf-8">
  <title>The Local Grocery</title>
  <meta property="og:type" content="website">
  <meta content="width=device-width, initial-scale=1" name="viewport">
  <meta content="Webflow" name="generator">
  <link href="css/normalizef.css" rel="stylesheet" type="text/css">
  <link href="css/webflowf.css" rel="stylesheet" type="text/css">
  <link href="css/landing.webflow.css" rel="stylesheet" type="text/css">
  <script src="https://kit.fontawesome.com/64d58efce2.js"
	crossorigin="anonymous"></script>
  <!-- [if lt IE 9]><script src="https://cdnjs.cloudflare.com/ajax/libs/html5shiv/3.7.3/html5shiv.min.js" type="text/javascript"></script><![endif] -->
  <script type="text/javascript">!function(o,c){var n=c.documentElement,t=" w-mod-";n.className+=t+"js",("ontouchstart"in o||o.DocumentTouch&&c instanceof DocumentTouch)&&(n.className+=t+"touch")}(window,document);</script>
  <link href="images/favicon.png" rel="shortcut icon" type="image/x-icon">
  <link href="images/webclip.png" rel="apple-touch-icon">
  <style>
body{
  -webkit-font-smoothing: antialiased;
  -moz-osx-font-smoothing: grayscale;
}
</style>
</head>
<body>
<%String username = (String) request.getAttribute("username"); %>
  <div class="div-block-5">
    <div class="div-block-6">
      <div><img src="images/Logofinal.png" loading="eager" width="296" sizes="(max-width: 479px) 100vw, 296px" srcset="images/Logofinal.png 500w, images/Logofinal.png 800w, images/Logofinal.png 893w" alt="Logo:The Local Grocery" class="image-12"></div>
      <div class="w-layout-grid grid-8">  
        <a id="w-node-_477b3621-450e-9daa-1e2b-96c1f7f90dbd-fc73f206" href="${pageContext.request.contextPath}/UserHandler?action=checkoutForm&username=${username}" class="w-inline-block"><img src="images/icons8-shopping-cart-48-2_1icons8-shopping-cart-48-2.png" loading="lazy" width="30" alt="Cart" class="image-5"></a>
         <a href="${pageContext.request.contextPath}/UserHandler?action=viewProfile&username=${username}"  class="user w-inline-block" id="w-node-_8360e376-db59-f576-64d6-4aad9b3fd6b9-fc73f206" ><i class="fas fa-user" style="font-size:150%;" ></i></a>
         
        <div id="w-node-_599de3ad-1c1b-e4cb-fb8f-96bd3c06c316-fc73f206"> 
          <a href="${pageContext.request.contextPath}/UserHandler?action=login" class="button-6 w-button">Logout</a>
       </div>
      </div>
    </div>
  </div>
  <div class="section-2">
    <div class="container-4 w-container">
      <div data-delay="3000" data-animation="slide" data-autoplay="1" data-duration="500" data-infinite="1" class="slider-4 w-slider">
        <div class="mask-3 w-slider-mask">
          <div class="slidefinal w-slide"><img src="images/Grocery-2.png" loading="lazy" width="1389" sizes="(max-width: 991px) 100vw, (max-width: 1439px) 940px, 65vw" srcset="images/Grocery-2-p-500.png 500w, images/Grocery-2-p-800.png 800w, images/Grocery-2.png 1280w" alt="slide1" class="image-9"></div>
          <div class="slidefinal w-slide"><img src="images/Copy-of-Grocery.png" loading="lazy" sizes="(max-width: 991px) 100vw, (max-width: 1439px) 940px, 65vw" srcset="images/Copy-of-Grocery-p-500.png 500w, images/Copy-of-Grocery-p-800.png 800w, images/Copy-of-Grocery-p-1080.png 1080w, images/Copy-of-Grocery.png 1280w" alt="slide2"></div>
          <div class="w-slide"><img src="images/Copy-of-Copy-of-Grocery.png" loading="lazy" sizes="(max-width: 991px) 100vw, (max-width: 1439px) 940px, 65vw" srcset="images/Copy-of-Copy-of-Grocery-p-500.png 500w, images/Copy-of-Copy-of-Grocery-p-800.png 800w, images/Copy-of-Copy-of-Grocery.png 1280w" alt="slide3"></div>
        </div>
        <div class="left-arrow w-slider-arrow-left">
          <div class="w-icon-slider-left"></div>
        </div>
        <div class="right-arrow w-slider-arrow-right">
          <div class="w-icon-slider-right"></div>
        </div>
        <div class="slide-nav-2 w-slider-nav w-round"></div>
      </div>
    </div>
  </div>
  <div class="div-block-8">
    <div class="container">
      <div class="title-wrap-centre">
        <h2 class="heading-2">FRESH VEGETABLES</h2>
      </div>
      <br>
      <div style="-webkit-transform:translate3d(-25PX, 0, 0) scale3d(1, 1, 1) rotateX(0) rotateY(0) rotateZ(0) skew(0, 0);-moz-transform:translate3d(-25PX, 0, 0) scale3d(1, 1, 1) rotateX(0) rotateY(0) rotateZ(0) skew(0, 0);-ms-transform:translate3d(-25PX, 0, 0) scale3d(1, 1, 1) rotateX(0) rotateY(0) rotateZ(0) skew(0, 0);transform:translate3d(-25PX, 0, 0) scale3d(1, 1, 1) rotateX(0) rotateY(0) rotateZ(0) skew(0, 0);opacity:0" class="button-wrapper">
        <div class="w-layout-grid grid-4">
        <% List<Product> products = (List<Product>) request.getAttribute("products");
       String path = (String) request.getAttribute("path");
       for(Product product:products){
    	   if(product.getCategory().equals("vegetable")){
    		   out.print("<div id='w-node-_956651e2-70a0-476b-f279-1a5bee0fe63d-fc73f206' class='menu'>"
    				   +"<img src=" + path +product.getpImg()+" loading='lazy' width='240' height='240' srcset='"+path+product.getpImg()+" 500w, "+path+product.getpImg()+" 540w' sizes='(max-width: 479px) 100vw, (max-width: 767px) 37vw, (max-width: 991px) 52vw, (max-width: 1279px) 39vw, (max-width: 1439px) 496.546875px, 556.640625px' alt='onion' class='image-3'>"
    				   +"<div class='div-block-3'>"
    				   +"<h6 class='heading-3'>"+product.getpName()+"</h6>"
    				   +"<div class='div-block-4'>"
    				   +" <div class='w-form'>"
    				   +"<form id='email-form' name='email-form' data-name='Email Form' class='form' action='"+request.getContextPath()+"/UserHandler?action=addToCart' method='post'>"
    				   +"<label class='field-label-2'>Rs."+product.getpPrice()+"</label>"
    				   +"<select id='Quantity' name='quantity' data-name='Quantity' required='' class='select-field w-select'>"
    				   +"<option value='1'>1</option>"
    				   +"<option value='2'>2</option>"
    				   +"<option value='3'>3</option>"
    				   +"<option value='4'>4</option>"
    				   +"<option value='5'>5</option>"
    				   +"<option value='6'>6</option>"
    				   +"</select>"
    				   +"<input type='hidden' name='pName' value='"+ product.getpName()+"' >"
    				    +"<input type='hidden' name='productId' value='"+ product.getProductId()+"' >"
    				    +"<input type='hidden' name='username' value='"+username+"'>"
    				    +"<input type='hidden' name='pPrice' value='"+product.getpPrice()+"'>"
    				    +"<input type='hidden' name='pImg' value='"+product.getpImg()+"'>"
    				   +"<input type='submit' value='Add to Cart' data-wait='Please wait...' class='submit-button-2 w-button'></form>"
    				   
    				   +"</div></div></div></div>");
    	   } 
   }
   %> 
      </div>
      </div>
      <div class="title-wrap-centre">
        <h2 class="heading-2">FRESH FRUITS</h2>
      </div>
      <br>
      <div style="-webkit-transform:translate3d(-25PX, 0, 0) scale3d(1, 1, 1) rotateX(0) rotateY(0) rotateZ(0) skew(0, 0);-moz-transform:translate3d(-25PX, 0, 0) scale3d(1, 1, 1) rotateX(0) rotateY(0) rotateZ(0) skew(0, 0);-ms-transform:translate3d(-25PX, 0, 0) scale3d(1, 1, 1) rotateX(0) rotateY(0) rotateZ(0) skew(0, 0);transform:translate3d(-25PX, 0, 0) scale3d(1, 1, 1) rotateX(0) rotateY(0) rotateZ(0) skew(0, 0);opacity:0" class="button-wrapper">
      <div class="w-layout-grid grid-4">
<% 
       for(Product product:products){
    	   if(product.getCategory().equals("fruit")){
    		   out.print("<div id='w-node-_956651e2-70a0-476b-f279-1a5bee0fe63d-fc73f206' class='menu'>"
    				   +"<img src=" + path +product.getpImg()+" loading='lazy' width='240' height='240' srcset='"+path+product.getpImg()+" 500w, "+path+product.getpImg()+" 540w' sizes='(max-width: 479px) 100vw, (max-width: 767px) 37vw, (max-width: 991px) 52vw, (max-width: 1279px) 39vw, (max-width: 1439px) 496.546875px, 556.640625px' alt='onion' class='image-3'>"
    				   +"<div class='div-block-3'>"
    				   +"<h6 class='heading-3'>"+product.getpName()+"</h6>"
    				   +"<div class='div-block-4'>"
    				   +" <div class='w-form'>"
    				   +"<form id='email-form' name='email-form' data-name='Email Form' class='form' action='"+request.getContextPath()+"/UserHandler?action=addToCart' method='post'>"
    				   +"<label class='field-label-2'>Rs."+product.getpPrice()+"</label>"
    				   +"<select id='Quantity' name='quantity' data-name='Quantity' required='' class='select-field w-select'>"
    				   +"<option value='1'>1</option>"
    				   +"<option value='2'>2</option>"
    				   +"<option value='3'>3</option>"
    				   +"<option value='4'>4</option>"
    				   +"<option value='5'>5</option>"
    				   +"<option value='6'>6</option>"
    				   +"</select>"
    				   +"<input type='hidden' name='pName' value='"+ product.getpName()+"' >"
    				    +"<input type='hidden' name='productId' value='"+ product.getProductId()+"' >"
    				    +"<input type='hidden' name='username' value='"+username+"'>"
    				    +"<input type='hidden' name='pPrice' value='"+product.getpPrice()+"'>"
    				    +"<input type='hidden' name='pImg' value='"+product.getpImg()+"'>"
    				   +"<input type='submit' value='Add to Cart' data-wait='Please wait...' class='submit-button-2 w-button'></form>"
    				   
    				   +"</div></div></div></div>");
    	   } 
   }
   %> 
         </div>
       <div class="title-wrap-centre">
        <h2 class="heading-2">PERSONAL CARE</h2>
      </div>
        <div class="w-layout-grid grid-4">
      <% 
       for(Product product:products){
    	   if(product.getCategory().equals("personal care")){
    		   out.print("<div id='w-node-_956651e2-70a0-476b-f279-1a5bee0fe63d-fc73f206' class='menu'>"
    				   +"<img src=" + path +product.getpImg()+" loading='lazy' width='240' height='240' srcset='"+path+product.getpImg()+" 500w, "+path+product.getpImg()+" 540w' sizes='(max-width: 479px) 100vw, (max-width: 767px) 37vw, (max-width: 991px) 52vw, (max-width: 1279px) 39vw, (max-width: 1439px) 496.546875px, 556.640625px' alt='onion' class='image-3'>"
    				   +"<div class='div-block-3'>"
    				   +"<h6 class='heading-3'>"+product.getpName()+"</h6>"
    				   +"<div class='div-block-4'>"
    				   +" <div class='w-form'>"
    				   +"<form id='email-form' name='email-form' data-name='Email Form' class='form' action='"+request.getContextPath()+"/UserHandler?action=addToCart' method='post'>"
    				   +"<label class='field-label-2'>Rs."+product.getpPrice()+"</label>"
    				   +"<select id='Quantity' name='quantity' data-name='Quantity' required='' class='select-field w-select'>"
    				   +"<option value='1'>1</option>"
    				   +"<option value='2'>2</option>"
    				   +"<option value='3'>3</option>"
    				   +"<option value='4'>4</option>"
    				   +"<option value='5'>5</option>"
    				   +"<option value='6'>6</option>"
    				   +"</select>"
    				   +"<input type='hidden' name='pName' value='"+ product.getpName()+"' >"
    				    +"<input type='hidden' name='productId' value='"+ product.getProductId()+"' >"
    				    +"<input type='hidden' name='username' value='"+username+"'>"
    				    +"<input type='hidden' name='pPrice' value='"+product.getpPrice()+"'>"
    				    +"<input type='hidden' name='pImg' value='"+product.getpImg()+"'>"
    				   +"<input type='submit' value='Add to Cart' data-wait='Please wait...' class='submit-button-2 w-button'></form>"
    				   
    				   +"</div></div></div></div>");
    	   } 
   }
   %>   
        </div>
      <div class="title-wrap-centre">
        <h2 class="heading-2">HOUSEHOLD ITEMS</h2>
      </div>
        <div class="w-layout-grid grid-4">
<%
       for(Product product:products){
    	   if(product.getCategory().equals("household items")){
    		   out.print("<div id='w-node-_956651e2-70a0-476b-f279-1a5bee0fe63d-fc73f206' class='menu'>"
    				   +"<img src=" + path +product.getpImg()+" loading='lazy' width='240' height='240' srcset='"+path+product.getpImg()+" 500w, "+path+product.getpImg()+" 540w' sizes='(max-width: 479px) 100vw, (max-width: 767px) 37vw, (max-width: 991px) 52vw, (max-width: 1279px) 39vw, (max-width: 1439px) 496.546875px, 556.640625px' alt='onion' class='image-3'>"
    				   +"<div class='div-block-3'>"
    				   +"<h6 class='heading-3'>"+product.getpName()+"</h6>"
    				   +"<div class='div-block-4'>"
    				   +" <div class='w-form'>"
    				   +"<form id='email-form' name='email-form' data-name='Email Form' class='form' action='"+request.getContextPath()+"/UserHandler?action=addToCart' method='post'>"
    				   +"<label class='field-label-2'>Rs."+product.getpPrice()+"</label>"
    				   +"<select id='Quantity' name='quantity' data-name='Quantity' required='' class='select-field w-select'>"
    				   +"<option value='1'>1</option>"
    				   +"<option value='2'>2</option>"
    				   +"<option value='3'>3</option>"
    				   +"<option value='4'>4</option>"
    				   +"<option value='5'>5</option>"
    				   +"<option value='6'>6</option>"
    				   +"</select>"
    				   +"<input type='hidden' name='pName' value='"+ product.getpName()+"' >"
    				    +"<input type='hidden' name='productId' value='"+ product.getProductId()+"' >"
    				    +"<input type='hidden' name='username' value='"+username+"'>"
    				    +"<input type='hidden' name='pPrice' value='"+product.getpPrice()+"'>"
    				    +"<input type='hidden' name='pImg' value='"+product.getpImg()+"'>"
    				   +"<input type='submit' value='Add to Cart' data-wait='Please wait...' class='submit-button-2 w-button'></form>"
    				   
    				   +"</div></div></div></div>");
    	   } 
   }
   %> 
      </div>
       <div class="title-wrap-centre">
        <h2 class="heading-2">BREAKFAST AND DAIRY</h2>
      </div>
        <div class="w-layout-grid grid-4">
  <% 
       for(Product product:products){
    	   if(product.getCategory().equals("breakfast and dairy")){
    		   out.print("<div id='w-node-_956651e2-70a0-476b-f279-1a5bee0fe63d-fc73f206' class='menu'>"
    				   +"<img src=" + path +product.getpImg()+" loading='lazy' width='240' height='240' srcset='"+path+product.getpImg()+" 500w, "+path+product.getpImg()+" 540w' sizes='(max-width: 479px) 100vw, (max-width: 767px) 37vw, (max-width: 991px) 52vw, (max-width: 1279px) 39vw, (max-width: 1439px) 496.546875px, 556.640625px' alt='onion' class='image-3'>"
    				   +"<div class='div-block-3'>"
    				   +"<h6 class='heading-3'>"+product.getpName()+"</h6>"
    				   +"<div class='div-block-4'>"
    				   +" <div class='w-form'>"
    				   +"<form id='email-form' name='email-form' data-name='Email Form' class='form' action='"+request.getContextPath()+"/UserHandler?action=addToCart' method='post'>"
    				   +"<label class='field-label-2'>Rs."+product.getpPrice()+"</label>"
    				   +"<select id='Quantity' name='quantity' data-name='Quantity' required='' class='select-field w-select'>"
    				   +"<option value='1'>1</option>"
    				   +"<option value='2'>2</option>"
    				   +"<option value='3'>3</option>"
    				   +"<option value='4'>4</option>"
    				   +"<option value='5'>5</option>"
    				   +"<option value='6'>6</option>"
    				   +"</select>"
    				   +"<input type='hidden' name='pName' value='"+ product.getpName()+"' >"
    				    +"<input type='hidden' name='productId' value='"+ product.getProductId()+"' >"
    				    +"<input type='hidden' name='username' value='"+username+"'>"
    				    +"<input type='hidden' name='pPrice' value='"+product.getpPrice()+"'>"
    				    +"<input type='hidden' name='pImg' value='"+product.getpImg()+"'>"
    				   +"<input type='submit' value='Add to Cart' data-wait='Please wait...' class='submit-button-2 w-button'></form>"
    				   
    				   +"</div></div></div></div>");
    	   } 
   }
   %>                      
        </div>
      </div>
    </div>
 </div>
  <script src="https://d3e54v103j8qbb.cloudfront.net/js/jquery-3.5.1.min.dc5e7f18c8.js?site=609d1dc4d7c79ff44a73f205" type="text/javascript" integrity="sha256-9/aliU8dGd2tb6OSsuzixeV4y/faTqgFtohetphbbj0=" crossorigin="anonymous"></script>
  <script src="js/webflow3.js" type="text/javascript"></script>
  <!-- [if lte IE 9]><script src="https://cdnjs.cloudflare.com/ajax/libs/placeholders/3.0.2/placeholders.min.js"></script><![endif] -->
</body>
</html>