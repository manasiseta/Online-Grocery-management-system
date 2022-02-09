<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ page import="Entity.Order"%>
<%@ page import="Entity.User"%>
<%@ page import="java.util.List"%>
<%@ page import="java.util.ArrayList"%>
<%@ page import="java.util.Arrays"%>
<!DOCTYPE html>
<html data-wf-page="609d1dc4d7c79f152d73f215" data-wf-site="609d1dc4d7c79ff44a73f205">
<head>
  <meta charset="utf-8">
  <base target="_parent">
  <title>The Local Grocery</title>
  <meta content="width=device-width, initial-scale=1" name="viewport">
  <meta content="Webflow" name="generator">
  <link href="css/normalize4.css" rel="stylesheet" type="text/css">
  <link href="css/webflow4.css" rel="stylesheet" type="text/css">
  <link href="images/favicon.png" rel="shortcut icon" type="image/x-icon">
<link href="images/webclip.png" rel="apple-touch-icon">
  <link href="css/viewprofile.webflow.css" rel="stylesheet" type="text/css">
  <!-- [if lt IE 9]><script src="https://cdnjs.cloudflare.com/ajax/libs/html5shiv/3.7.3/html5shiv.min.js" type="text/javascript"></script><![endif] -->
  <script type="text/javascript">!function(o,c){var n=c.documentElement,t=" w-mod-";n.className+=t+"js",("ontouchstart"in o||o.DocumentTouch&&c instanceof DocumentTouch)&&(n.className+=t+"touch")}(window,document);</script>
  <style>
body{
  -webkit-font-smoothing: antialiased;
  -moz-osx-font-smoothing: grayscale;
}
</style>
</head>
<body>
  <header id="nav" class="sticky-nav-2">
    <nav class="w-container">
      <ul role="list" class="nav-grid-3 w-list-unstyled">
        <li id="w-node-b68aff40-70af-0d3a-447d-a11513e44af1-2d73f215">
          <a href="#" class="nav-logo-link"><img src="images/Logofinal.png" width="75" srcset="images/Logofinal-p-500.png 500w, images/Logofinal-p-800.png 800w, images/Logofinal.png 893w" sizes="(max-width: 479px) 47vw, 230.953125px" alt="Logo:The Local Grocery" class="nav-logo-2"></a>
        </li>
        <li>
          <a href="${pageContext.request.contextPath}/UserHandler?action=login" class="button-9 w-button">Logout</a>
        </li>
      </ul>
    </nav>
  </header>
  <% List<Order> orders = (List<Order>) request.getAttribute("orders"); %>
  <% User user = (User) request.getAttribute("user"); %>
  <div data-node-type="commerce-paypal-checkout-form-container" data-wf-checkout-query="" data-wf-page-link-href-prefix="" class="w-commerce-commercepaypalcheckoutformcontainer paypal-checkout-form">
    <div class="w-commerce-commercelayoutcontainer w-container">
      <div class="w-commerce-commercelayoutmain">
        <form data-node-type="commerce-checkout-shipping-methods-wrapper" class="w-commerce-commercecheckoutshippingmethodswrapper">
          <div class="w-commerce-commercecheckoutblockheader block-header">
            <h5>User Details</h5>
          </div>
          <fieldset>
<div data-node-type="commerce-checkout-shipping-methods-empty-state" style="display:none" class="w-commerce-commercecheckoutshippingmethodsemptystate">
            
            </div>
          </fieldset>
        </form>
        <div class="w-commerce-commercecheckoutcustomerinfosummarywrapper">
          <fieldset class="w-commerce-commercecheckoutblockcontent">
            <div class="w-commerce-commercecheckoutrow">
              <div class="w-commerce-commercecheckoutcolumn">
                <div class="w-commerce-commercecheckoutsummaryitem"><label class="w-commerce-commercecheckoutsummarylabel field-label">Name</label>
                  <div><% out.print(user.getUsername()); %></div>
                </div>
                <div class="w-commerce-commercecheckoutsummaryitem div-block-26"><label class="w-commerce-commercecheckoutsummarylabel field-label">Email</label>
                  <div><% out.print(user.getEmail()); %></div>
                </div>
              </div>
              <div class="w-commerce-commercecheckoutcolumn">
                <div class="w-commerce-commercecheckoutsummaryitem div-block-27"><label class="w-commerce-commercecheckoutsummarylabel field-label">Contact Number:</label>
                  <div class="text-block-87"><% out.print(user.getPhoneNo()); %></div>
                </div>
              </div>
            </div>
          </fieldset>
        </div>
        <div>
          <div class="w-commerce-commercecheckoutsummaryblockheader block-header">
            <h5>Orders History</h5>
          </div>
          <div class="div-block-31">
            <div class="w-layout-grid grid-11">
            <%
            
             for(Order order:orders){
            	out.print("<div id='w-node-_95ef9f27-21a3-979b-0e15-90f46005a4f4-2d73f215' class='div-block-30'>"
            			+" <div class='w-layout-grid grid-13'>"
            			+"<h6 id='w-node-_7e42842f-5f31-d423-bd97-343b8b867836-2d73f215'>Order ID</h6>"
            			+"<h6 id='w-node-_6f09f9e6-8d18-c765-428f-5b3fd6e63362-2d73f215'>Products</h6>"
            			+"<h6 id='w-node-b7cd8962-1aca-bdbe-0426-8475a55bcc0d-2d73f215'>Total</h6>"
            			+"<div id='w-node-_8f219b57-9047-413e-5dea-90c4e3754be4-2d73f215'>"+order.getOrderId()+"</div>"
            			+"<div class='w-layout-grid grid-12'>"
            			
            			);
            	   List<String> products = new ArrayList<String>();
            	   String str[] = order.getProducts().split(",");
            	   products = Arrays.asList(str);
            	   int j=1;
            	   for(String product:products){
            		   out.print("<div id='w-node-_0cfbaa0b-8b2e-8bab-01bf-6b857bce648f-2d73f215' class='div-block-28'>"
            				   +"<div>"+j+".</div>"
                 			  +"<div>"+product+"</div>"
                 			  +"</div>");
            		   j++;
            	   }
            	   out.print("</div><div id='w-node-_1d70fbdf-2d4f-6fdc-1750-2b946bd25d3f-2d73f215' class='div-block-29'>"
            			   +"<div>Rs.</div>"
            			   +" <div>"+order.getTotalCost()+"</div>"
            			   +"</div>"
            			   +"</div></div>");
              	 
             }
            %>
             
            </div>
          </div>
        </div>
      </div>
      <div class="w-commerce-commercelayoutsidebar div-block-25">
      </div>
    </div>
  </div>
  <script src="https://d3e54v103j8qbb.cloudfront.net/js/jquery-3.5.1.min.dc5e7f18c8.js?site=609d1dc4d7c79ff44a73f205" type="text/javascript" integrity="sha256-9/aliU8dGd2tb6OSsuzixeV4y/faTqgFtohetphbbj0=" crossorigin="anonymous"></script>
  <script src="js/webflow4.js" type="text/javascript"></script>
  <!-- [if lte IE 9]><script src="https://cdnjs.cloudflare.com/ajax/libs/placeholders/3.0.2/placeholders.min.js"></script><![endif] -->
</body>
</html>