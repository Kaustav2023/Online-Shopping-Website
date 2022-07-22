<!DOCTYPE html>
<html>
<head>
<link rel="preconnect" href="https://fonts.googleapis.com">
<link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
<link href="https://fonts.googleapis.com/css2?family=Dancing+Script:wght@700&display=swap" rel="stylesheet">
<link rel="stylesheet" href="css/signup-style.css">
<title>Login</title>
</head>
<body>
<div id='container'>
  <div class='signup'>
      <form action="loginAction.jsp" method="post">
      <input type="email" name="email" placeholder="Enter Email" required>
      <input type="password" name="password" placeholder="Enter Password" required>
      <input type="submit" value="login">
      </form>
     
      <h3><a href="signup.jsp">SignUp</a></h3>
       <h3><a href="forgotPassword.jsp">Forgot Password?</a></h3>
  </div>
  <div class='whysignLogin'>
  <%
  String msg=request.getParameter("msg");
  if("notexist".equals(msg))
  {
  %>                             
  <h1>Incorrect Username or Password</h1>
<%}%>
<%if("invalid".equals(msg))
{%>
<h1>Some thing Went Wrong! Try Again!</h1>
<%} %>
    <h2>Shopify</h2>
    <p>India's favorite shopping website.Let's shopify your lifestyle.</p>
  </div>
</div>
</body>
</html>