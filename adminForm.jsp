<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html data-wf-page="6082c0670382075f0ee55aa4" data-wf-site="6082c06603820767aee55a9f">
<head>
  <meta charset="utf-8">
  <title>The Local Grocery</title>
  <meta content="width=device-width, initial-scale=1" name="viewport">
  <meta content="Webflow" name="generator">
  <link href="css/normalize6.css" rel="stylesheet" type="text/css">
  <link href="css/webflow6.css" rel="stylesheet" type="text/css">
  <link href="css/manishs-dandy-project-c3c7d8.webflow.css" rel="stylesheet" type="text/css">
  <script src="https://ajax.googleapis.com/ajax/libs/webfont/1.6.26/webfont.js" type="text/javascript"></script>
  <script type="text/javascript">WebFont.load({  google: {    families: ["Karla:regular,italic,700,700italic"]  }});</script>
  <!-- [if lt IE 9]><script src="https://cdnjs.cloudflare.com/ajax/libs/html5shiv/3.7.3/html5shiv.min.js" type="text/javascript"></script><![endif] -->
  <script type="text/javascript">!function(o,c){var n=c.documentElement,t=" w-mod-";n.className+=t+"js",("ontouchstart"in o||o.DocumentTouch&&c instanceof DocumentTouch)&&(n.className+=t+"touch")}(window,document);</script>
 <link href="images/favicon.png" rel="shortcut icon" type="image/x-icon">
<link href="images/webclip.png" rel="apple-touch-icon">
  <script src="https://www.google.com/recaptcha/api.js" type="text/javascript"></script>
</head>
<body class="body">
  <div class="sign-up-wrap">
    <div class="form w-form">
      <div class="placeholder-text-style-embed-code w-embed">
        <style>
::-webkit-input-placeholder { /* Edge */
  color: red;
}
:-ms-input-placeholder { /* Internet Explorer 10-11 */
  color: red;
}
::placeholder {
  color: red;
}
</style>
      </div>
      <h1>Admin Dashboard</h1>
      <form id="email-form" name="email-form" data-name="Email Form" class="form" action="${pageContext.request.contextPath}/Admin?action=authenticate" method="post">
      <input type="text" class="text_field w-input" maxlength="256" name="email" data-name="username" placeholder="Username" id="username" required>
      <input type="password" class="text-field w-input" maxlength="256" name="password" data-name="password" placeholder="Password" id="password-2" required>
      <input type="submit" value="Login" data-wait="Please wait..." class="submit-button w-button">
      </form>
      
    </div>
  </div>
  <script src="https://d3e54v103j8qbb.cloudfront.net/js/jquery-3.5.1.min.dc5e7f18c8.js?site=6082c06603820767aee55a9f" type="text/javascript" integrity="sha256-9/aliU8dGd2tb6OSsuzixeV4y/faTqgFtohetphbbj0=" crossorigin="anonymous"></script>
  <script src="js/webflow6.js" type="text/javascript"></script>
  <!-- [if lte IE 9]><script src="https://cdnjs.cloudflare.com/ajax/libs/placeholders/3.0.2/placeholders.min.js"></script><![endif] -->
</body>
</html>