<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html><!--  This site was created in Webflow. http://www.webflow.com  -->
<!--  Last Published: Sun May 09 2021 13:00:04 GMT+0000 (Coordinated Universal Time)  -->
<html data-wf-page="6097c9cd94751f36b38f3562" data-wf-site="60965450b489e80c7b08c0b5">
<head>
  <meta charset="utf-8">
  <title>Edit</title>
  <meta content="Edit" property="og:title">
  <meta content="Edit" property="twitter:title">
  <meta content="width=device-width, initial-scale=1" name="viewport">
  <meta content="Webflow" name="generator">
  <link href="css/normalize.css" rel="stylesheet" type="text/css">
  <link href="css/webflow.css" rel="stylesheet" type="text/css">
  <link href="css/manishs-exceptional-proje-1f562df465911.webflow.css" rel="stylesheet" type="text/css">
  <script src="https://ajax.googleapis.com/ajax/libs/webfont/1.6.26/webfont.js" type="text/javascript"></script>
  <script type="text/javascript">WebFont.load({  google: {    families: ["Varela:400","Karla:regular,700"]  }});</script>
  <!-- [if lt IE 9]><script src="https://cdnjs.cloudflare.com/ajax/libs/html5shiv/3.7.3/html5shiv.min.js" type="text/javascript"></script><![endif] -->
  <script type="text/javascript">!function(o,c){var n=c.documentElement,t=" w-mod-";n.className+=t+"js",("ontouchstart"in o||o.DocumentTouch&&c instanceof DocumentTouch)&&(n.className+=t+"touch")}(window,document);</script>
  <link href="images/favicon.ico" rel="shortcut icon" type="image/x-icon">
  <link href="images/webclip.png" rel="apple-touch-icon">
  <!-- REPLACE ↓↓ -->
  <!--  Temporary Memberstack Code  -->
  <script src="https://api.memberstack.io/static/memberstack.js" data-memberstack-id="492fe7dc98e13f13d8933202d4c9b994"></script>
  <!-- REPLACE ↑↑ -->
  <!-- Chart.js CDN -->
  <script src="https://cdn.jsdelivr.net/npm/chart.js@2.8.0"></script>
</head>
<body>
  <div class="page-wrapper">
    <div class="top-nav">
      <a href="#" class="logo-link w-nav-brand"><img src="images/The-Local-Grocery-logos_black.png" loading="lazy" width="221" sizes="221px" srcset="images/The-Local-Grocery-logos_black-p-500.png 500w, images/The-Local-Grocery-logos_black-p-800.png 800w, images/The-Local-Grocery-logos_black.png 893w" alt="" class="image"></a>
      <a href="#" class="button-2 w-button">Admin Home</a>
    </div>
    <div data-duration-in="300" data-duration-out="100" class="tabs w-tabs">
      <div class="navigation-menu w-tab-menu">
        <a data-w-tab="Tab 2" class="navigation-item w-inline-block w-tab-link w--current">
          <div class="navigation-icon"><img src="images/icons8-update-24_1icons8-update-24.png" loading="lazy" alt="" class="image-5"></div>
          <div class="text-block">Update Items</div>
        </a>
      </div>
      <div class="dash-tab-wrapper w-tab-content">
        <div data-w-tab="Tab 2" class="dashboard-section w-tab-pane w--tab-active">
          <div>
            <div class="form-block w-form">
            <% String id = (String) request.getAttribute("id");%>
             <form id="email-form" name="email-form" data-name="Email Form" class="form" method="post" action="${pageContext.request.contextPath}/Admin?action=editProducts" >
             
              <label for="product_price" id="w-node-fc2e5e8b-a4f7-badd-bb71-caeeb65daa05-b38f3562">Product Price</label>
              <input type="number" class="w-input" maxlength="256" name="pPrice" data-name="product_price" placeholder="Product Price" id="product_price" required>
              <label for="product_quantity" id="w-node-fe49d7fb-b40a-20e9-bb52-4a32922bf90d-b38f3562">Product Quantity</label>
              <input type="number" class="w-input" maxlength="256" name="pQuantity" data-name="product_quantity" placeholder="Product Quantity" id="product_quantity" required>
              <input type="hidden" name="id" value="${id}">
              <input type="submit" value="update" data-wait="Please wait..." id="w-node-fc2e5e8b-a4f7-badd-bb71-caeeb65daa08-b38f3562" class="w-button">
              </form>
              <div class="w-form-done">
                <div>Thank you! Your submission has been received!</div>
              </div>
              <div class="w-form-fail">
                <div>Oops! Something went wrong while submitting the form.</div>
              </div>
            </div>
          </div>
        </div>
      </div>
    </div>
  </div>
  <script src="https://d3e54v103j8qbb.cloudfront.net/js/jquery-3.5.1.min.dc5e7f18c8.js?site=60965450b489e80c7b08c0b5" type="text/javascript" integrity="sha256-9/aliU8dGd2tb6OSsuzixeV4y/faTqgFtohetphbbj0=" crossorigin="anonymous"></script>
  <script src="js/webflow.js" type="text/javascript"></script>
  <!-- [if lte IE 9]><script src="https://cdnjs.cloudflare.com/ajax/libs/placeholders/3.0.2/placeholders.min.js"></script><![endif] -->
  <div memberstack-template="Client Dashboard Template"></div>
  <!-- Crisp + MemberStack -->
  <script>
    MemberStack.onReady.then(function(member) {
    var email = member["email"]
    var name = member["first-name"]
    if (member.loggedIn) {
        try{
            $crisp.push(["set", "user:email", [email] ])
            $crisp.push(["set", "user:nickname", [name] ])
          } catch(e) {}
    }
})
</script>
</body>
</html>