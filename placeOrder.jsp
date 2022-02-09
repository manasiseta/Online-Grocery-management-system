<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ page import="Entity.Order"%>
<%@ page import="java.util.List"%>
<%@ page import="java.util.ArrayList"%>
<%@ page import="java.util.Arrays"%>
<!DOCTYPE html>
<html data-wf-page="609d1dc4d7c79f1f5273f214" data-wf-site="609d1dc4d7c79ff44a73f205">
<head>
  <meta charset="utf-8">
  <title>The Local Grocery</title>
  <meta content="Chomp - Webflow Ecommerce HTML Website Template" property="og:title">
  <meta content="Chomp - Webflow Ecommerce HTML Website Template" property="twitter:title">
  <meta content="width=device-width, initial-scale=1" name="viewport">
  <meta content="Webflow" name="generator">
  <link href="css/normalize.css" rel="stylesheet" type="text/css">
  <link href="css/webflow.css" rel="stylesheet" type="text/css">
  <link href="css/home-5ccfe6-19b1a8e69d04b7cc3770afde469.webflow.css" rel="stylesheet" type="text/css">
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
  <div id="Banner" class="banner">
    <div class="banner-wrap">
      <div class="notice-text">We&#x27;re open and available for delivery. <a href="#" class="white-link">Order Now</a>
      </div>
    </div>
  </div>
  <div data-collapse="medium" data-animation="default" data-duration="400" id="Navigation" data-w-id="33c883c6-4afc-cc73-3bca-d2857a9d4bc2" role="banner" class="navbar w-nav">
    <div class="navigation-container">
      <div class="navigation-container">
        <div class="navigation-left">
          <a href="index.html" class="brand w-nav-brand"><img src="images/Logofinal.png" width="255" sizes="(max-width: 479px) 53vw, 255px" loading="eager" srcset="images/Logofinal.png 500w, images/Logofinal.png 800w, images/Logofinal.png 893w" alt="Logo:The Local Grocery"></a>
        </div>
        <div class="navigation-right">
          <a href="${pageContext.request.contextPath}/UserHandler?action=login" class="button-2 w-button">Logout</a>
        </div>
      </div>
    </div>
  </div>
  <% String username = (String) request.getAttribute("username");
   Order order = (Order) request.getAttribute("order");
   List<String> products = new ArrayList<String>();
   String str[] = order.getProducts().split(",");
   products = Arrays.asList(str);
%>
  <div data-node-type="commerce-order-confirmation-wrapper" data-wf-order-query="" data-wf-page-link-href-prefix="" class="w-commerce-commerceorderconfirmationcontainer order-confirmation">
    <div class="container-order">
      <div class="w-commerce-commercelayoutmain order-full">
        <div class="w-commerce-commercecheckoutcustomerinfosummarywrapper">
          <div class="w-commerce-commercecheckoutsummaryblockheader block-header">
            <h5>Customer Information</h5>
          </div>
          <fieldset class="w-commerce-commercecheckoutblockcontent block-content-2">
            <div class="w-commerce-commercecheckoutrow">
              <div>
                <div class="div-block-24">
                  <h5 class="heading-11">Name :</h5>
                  <h6 class="heading-16"><% out.print(username); %></h6>
                </div>
                <div class="div-block-20">
                  <h5 class="heading-12">Address :</h5>
                  <h6 class="heading-15"><% out.print(order.getAddress()); %></h6>
                </div>
              </div>
            </div>
          </fieldset>
        </div>
        <div class="w-commerce-commercecheckoutpaymentsummarywrapper">
          <div class="w-commerce-commercecheckoutsummaryblockheader block-header-4">
            <h5>Payment Info</h5>
          </div>
          <fieldset class="w-commerce-commercecheckoutblockcontent">
            <h4 class="heading-5">Pay on Delivery</h4>
          </fieldset>
        </div>
        <div class="w-commerce-commercecheckoutorderitemswrapper order-items">
          <div class="w-commerce-commercecheckoutsummaryblockheader block-header">
            <h5>Items in Order</h5>
          </div>
          <fieldset class="w-commerce-commercecheckoutblockcontent">
          <%int i=1;
          for(String product:products){
        	  out.print("<div class='div-block-21'>"
        			  +"<h6 class='heading-8'>"+i+"</h6>"
        			  +"<h5>"+product+"</h5>"
        			 +" </div>" );
        	  i++;
          }
          %>
         
        
            <script type="text/x-wf-template" id="wf-template-5e83ed851366eb50cd9ed4d4000000000051"></script>
            <div class="w-commerce-commercecheckoutorderitemslist" data-wf-collection="database.commerceOrder.userItems" data-wf-template-id="wf-template-5e83ed851366eb50cd9ed4d4000000000051"></div>
          </fieldset>
        </div>
      </div>
      <div class="w-commerce-commercelayoutsidebar order-column">
        <div class="order-detail">
          <div class="w-commerce-commercecheckoutordersummarywrapper">
            <div class="w-commerce-commercecheckoutsummaryblockheader block-header-3">
              <h5>Order Summary</h5>
            </div>
            <fieldset class="w-commerce-commercecheckoutblockcontent">
              <div class="w-commerce-commercecheckoutsummarylineitem">
                <div>Subtotal</div>
                <div class="div-block-15">
                  <div>RS. </div>
                  <div><% out.print(order.getTotalCost()); %></div>
                </div>
              </div>
              <div class="w-commerce-commercecheckoutsummarylineitem">
                <div><strong>Total</strong></div>
                <div class="div-block-15">
                  <div><strong>RS. </strong></div>
                  <div><strong><% out.print(order.getTotalCost()); %></strong></div>
                </div>
              </div>
            </fieldset>
          </div>
        </div>
        <div class="order-detail">
          <div class="w-commerce-commercecheckoutordersummarywrapper">
            <div class="w-commerce-commercecheckoutsummaryblockheader block-header-5">
            <form action="${pageContext.request.contextPath}/UserHandler?action=placeOrder&username=${username}" method="post">
           <input type="submit" value="Place Order"  class="button-8 w-button">
            </form>
              
            </div>
          </div>
        </div>
      </div>
    </div>
  </div>
  <script src="https://d3e54v103j8qbb.cloudfront.net/js/jquery-3.5.1.min.dc5e7f18c8.js?site=609d1dc4d7c79ff44a73f205" type="text/javascript" integrity="sha256-9/aliU8dGd2tb6OSsuzixeV4y/faTqgFtohetphbbj0=" crossorigin="anonymous"></script>
  <script src="js/webflow.js" type="text/javascript"></script>
  <!-- [if lte IE 9]><script src="https://cdnjs.cloudflare.com/ajax/libs/placeholders/3.0.2/placeholders.min.js"></script><![endif] -->
</body>
</html>