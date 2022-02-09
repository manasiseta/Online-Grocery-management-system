<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ page import="Entity.Cart"%>
<%@ page import="java.util.List"%>
<!DOCTYPE html>
<html data-wf-page="609d1dc4d7c79ff3dd73f20b"
	data-wf-site="609d1dc4d7c79ff44a73f205">
<head>
<meta charset="utf-8">
<title>The Local Grocery</title>
<meta content="width=device-width, initial-scale=1" name="viewport">
<meta content="Webflow" name="generator">
<link href="css/normalize3.css" rel="stylesheet" type="text/css">
<link href="css/webflow3.css" rel="stylesheet" type="text/css">
<link href="css/home-5ccfe6-19b1a8e69d04b7cc3770afde469.webflow.css"
	rel="stylesheet" type="text/css">
<script type="text/javascript">
	!function(o, c) {
		var n = c.documentElement, t = " w-mod-";
		n.className += t + "js", ("ontouchstart" in o || o.DocumentTouch
				&& c instanceof DocumentTouch)
				&& (n.className += t + "touch")
	}(window, document);
</script>
<link href="images/favicon.png" rel="shortcut icon" type="image/x-icon">
<link href="images/webclip.png" rel="apple-touch-icon">
<style>
body {
	-webkit-font-smoothing: antialiased;
	-moz-osx-font-smoothing: grayscale;
}
</style>
</head>
<body>
	<header id="nav" class="sticky-nav">
		<nav class="w-container">
			<ul role="list" class="nav-grid-2 w-list-unstyled">
				<li id="w-node-_1d1dd64f-f29e-37d7-c352-324e453b7f31-dd73f20b">
					<a href="#" class="nav-logo-link"><img
						src="images/Logofinal.png" width="446.5"
						sizes="(max-width: 479px) 79vw, 230.953125px" loading="eager"
						srcset="images/Logofinal.png 500w, images/Logofinal.png 800w, images/Logofinal.png 893w"
						alt="Logo:The Local Grocery" class="nav-logo"></a>
				</li>
				<li>
					<div class="div-block-14">
						<img
							src="images/icons8-shopping-cart-48-2_1icons8-shopping-cart-48-2.png"
							loading="lazy" alt="Cart" class="image-10">
					</div>
				</li>
				<li><a href="${pageContext.request.contextPath}/UserHandler?action=login" class="button-7 w-button">Logout</a></li>
			</ul>
		</nav>
	</header>
	<%
	List<Cart> carts = (List<Cart>) request.getAttribute("cart");
	String username = (String) request.getAttribute("username");
	String path = (String) request.getAttribute("path");
	int i = 1;
	int total = 0;
	%>
	<div data-node-type="commerce-checkout-form-container"
		data-wf-checkout-query="" data-wf-page-link-href-prefix=""
		class="w-commerce-commercecheckoutformcontainer">
		<div class="container-order">
			<div class="w-commerce-commercelayoutmain">
				<div class="w-commerce-commercecheckoutorderitemswrapper">
					<div
						class="w-commerce-commercecheckoutsummaryblockheader block-header">
						<h5>Items in Order</h5>
					</div>
					<fieldset class="w-commerce-commercecheckoutblockcontent">
						<div class="w-layout-grid grid-10">
							<%
							for (Cart cart : carts) {
                                     out.print("<div class='container-6 w-container'>"
                                    		 +"<div class='div-block-9'>"
                                    		 +"<div class='div-block-18'>"
                                    		 +"<img src="+ path +cart.getcImg() +" loading='lazy' height='81' width='80'"
 											 +"srcset='"+path+cart.getcImg()+" 500w, "+path+cart.getcImg()+" 540w'"
 											 +"sizes='(max-width: 1279px) 80px, (max-width: 1439px) 6vw, 80px'>"
 											 +"<div class='div-block-11'>"
 											 +"	<div>"
 											 +"<h6>"+cart.getProduct()+"</h6>"
 											 +"</div>"
 											 +"<div class='div-block-10'>"
 											 +"<div class='text-block-83'>Quantity:</div>"
 											 +"<div class='text-block-84'>"+cart.getQuantity()+"</div>"
 											 +"</div></div></div>"
 											 +"<div class='div-block-12'>"
 											 +"<div>RS.</div>"
 											 +"<div>"+ (cart.getPrice()*cart.getQuantity()) +"</div>"
 											 +"</div></div>"
 											 +"<div class='div-block-19'>"
 											 +"<div class='div-block-13'>"
 											 +"<a href='"+request.getContextPath()+"/UserHandler?action=deleteCart&id="+cart.getSrNo()+"&username="+cart.getUsername()+"' class='link-2'>Delete</a>"
                                    		 +"</div><div>");
                                     if(cart.getInstock().equals("outofstock")){
                                    	 out.print("<div class='text-block-86'>"
                                                   +"<strong>Out of Stock</strong>"
                                                   +"</div>");
                                     }
                                      out.print("</div></div></div>");  		
                                    		 
                                     total += cart.getPrice()*cart.getQuantity();
                                     System.out.print(total);
							}
							%>	
						</div>
						<script type="text/x-wf-template"
							id="wf-template-5e83ed841366eba0879ed4d0000000000086"></script>
						<div class="w-commerce-commercecheckoutorderitemslist"
							data-wf-collection="database.commerceOrder.userItems"
							data-wf-template-id="wf-template-5e83ed841366eba0879ed4d0000000000086"></div>
					</fieldset>
				</div>
				<form data-node-type="commerce-checkout-customer-info-wrapper"
					class="w-commerce-commercecheckoutcustomerinfowrapper"></form>
				<form action="${pageContext.request.contextPath}/UserHandler?action=checkout&username=${username}" method="post" data-node-type="commerce-checkout-shipping-address-wrapper"
					class="w-commerce-commercecheckoutshippingaddresswrapper">
					<div class="w-commerce-commercecheckoutblockheader block-header">
						<h5>Order Address</h5>
						<div class="required">* Required</div>
					</div>
					<fieldset class="w-commerce-commercecheckoutblockcontent">
						<label class="w-commerce-commercecheckoutlabel field-label">Street Address *</label>
						<input type="text" name="address" required
							class="w-commerce-commercecheckoutshippingstreetaddress input-field">
						<div class="w-commerce-commercecheckoutrow">
						<div class="w-commerce-commercecheckoutcolumn">
						<label class="w-commerce-commercecheckoutlabel field-label">Zip/PostalCode *</label>
						<input type="text" name="zip" required
									data-node-type="commerce-checkout-shipping-zip-field"
									class="w-commerce-commercecheckoutshippingzippostalcode input-field">
							</div>
						</div>
						
					</fieldset>
					<input type="submit" value="Checkout"
						data-node-type="commerce-checkout-place-order-button"
						class="w-commerce-commercecheckoutplaceorderbutton submit-button"
						data-loading-text="Checking Out">
				</form>

			</div>
			<div class="w-commerce-commercelayoutsidebar order-column">
				<div class="order-detail">
					<div class="w-commerce-commercecheckoutordersummarywrapper">
						<div
							class="w-commerce-commercecheckoutsummaryblockheader block-header-2">
							<h5>Order Summary</h5>
						</div>
						<fieldset
							class="w-commerce-commercecheckoutblockcontent block-content">
							<div class="w-commerce-commercecheckoutsummarylineitem">
								<div>Subtotal:</div>
								<div><%out.print(total); %></div>
							</div>
							<div class="w-commerce-commercecheckoutsummarylineitem">
								<div>Total:</div>
								<div class="w-commerce-commercecheckoutsummarytotal">Rs. <%out.print(total); %></div>
							</div>
						</fieldset>
					</div>
					<div class="w-commerce-commercecheckoutordersummarywrapper">
						<div
							class="w-commerce-commercecheckoutsummaryblockheader block-header-2">
							<h5>Payment Mode</h5>
						</div>
						<fieldset class="w-commerce-commercecheckoutblockcontent">
							<div class="w-commerce-commercecheckoutsummarylineitem line-item">
								<h6>Cash on Delivery</h6>
							</div>
							<script type="text/x-wf-template"
								id="wf-template-ef663edd-25da-44f4-7220-e55fec6552be">%3Cdiv%20class%3D%22w-commerce-commercecheckoutordersummaryextraitemslistitem%22%3E%3Cdiv%3EThis%20is%20some%20text%20inside%20of%20a%20div%20block.%3C%2Fdiv%3E%3Cdiv%3EThis%20is%20some%20text%20inside%20of%20a%20div%20block.%3C%2Fdiv%3E%3C%2Fdiv%3E</script>
							<div
								class="w-commerce-commercecheckoutordersummaryextraitemslist"
								data-wf-collection="database.commerceOrder.extraItems"
								data-wf-template-id="wf-template-ef663edd-25da-44f4-7220-e55fec6552be">
							</div>
						</fieldset>
					</div>
					
				</div>
				<div data-node-type="commerce-checkout-error-state"
					style="display: none" class="w-commerce-commercecheckouterrorstate">
					<div class="w-checkout-error-msg"
						data-w-info-error="There was an error processing your customer info.  Please try again, or contact us if you continue to have problems."
						data-w-shipping-error="Sorry. We can’t ship your order to the address provided."
						data-w-billing-error="Your payment could not be completed with the payment information provided.  Please make sure that your card and billing address information is correct, or try a different payment card, to complete this order.  Contact us if you continue to have problems."
						data-w-payment-error="There was an error processing your payment.  Please try again, or contact us if you continue to have problems."
						data-w-pricing-error="The prices of one or more items in your cart have changed. Please refresh this page and try again."
						data-w-minimum-error="The order minimum was not met. Add more items to your cart to continue."
						data-w-extras-error="A merchant setting has changed that impacts your cart. Please refresh and try again."
						data-w-product-error="One or more of the products in your cart have been removed. Please refresh the page and try again."
						data-w-invalid-discount-error="This discount is invalid."
						data-w-expired-discount-error="This discount is no longer available."
						data-w-usage-reached-discount-error="This discount is no longer available."
						data-w-requirements-not-met-error="Your order does not meet the requirements for this discount.">There
						was an error processing your customer info. Please try again, or
						contact us if you continue to have problems.</div>
				</div>
			</div>
		</div>
	</div>
	<script
		src="https://d3e54v103j8qbb.cloudfront.net/js/jquery-3.5.1.min.dc5e7f18c8.js?site=609d1dc4d7c79ff44a73f205"
		type="text/javascript"
		integrity="sha256-9/aliU8dGd2tb6OSsuzixeV4y/faTqgFtohetphbbj0="
		crossorigin="anonymous"></script>
	<script src="js/webflow3.js" type="text/javascript"></script>
	<!-- [if lte IE 9]><script src="https://cdnjs.cloudflare.com/ajax/libs/placeholders/3.0.2/placeholders.min.js"></script><![endif] -->
</body>
</html>