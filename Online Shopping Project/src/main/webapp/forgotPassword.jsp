<!DOCTYPE html>
<html>
<head>
<link rel="preconnect" href="https://fonts.googleapis.com">
<link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
<link href="https://fonts.googleapis.com/css2?family=Dancing+Script:wght@700&display=swap" rel="stylesheet">
<link rel="stylesheet" href="css/signup-style.css">
<title>ForgotPassword</title>
</head>
<body>
<div id='container'>
  <div class='signup'>
  <form action="forgotPasswordAction.jsp" method="post">
  <input type="email" name="email" placeholder="Enter Email" required>
  <input type="number" name="mobileNumber" placeholder="Enter Mobile Number" required>
  <select name="securityQuestion">
  <option value="What was your first car?">What was your first car?</option>
  <option value="What elementary school did you attend?">What elementary school did you attend?</option>
  <option value="What is the name of your first pet?">What is the name of your first pet?</option>
  <option value="What is the name of the town where you were born?">What is the name of the town where you were born?</option>
  </select>
  <input type="text" name="answer" placeholder="Enter Answer" required>
  <input type="password" name="newPassword" placeholder="Enter your new password to set" required>
  <input type="submit" value="Save">
  </form>
     
      <h3><a href="login.jsp">Login</a></h3>
  </div>
  <div class='whyforgotPassword'>
 
 <%
 String msg=request.getParameter("msg");
 if("done".equals(msg))
 {
 %>  
<h1>Password Changed Successfully!</h1>
<%} %>
<%
if("invalid".equals(msg))
{
%>
<h1>Something Went Wrong! Try Again!</h1>
<%} %>
    <h2>Shopify</h2>
    <p>India's favorite shopping website.Let's shopify your lifestyle.</p>
  </div>
</div>
</body>
</html>