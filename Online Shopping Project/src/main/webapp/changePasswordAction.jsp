<%@page import="project.ConnectionProvider"%>
<%@page import="java.sql.*"%>
<%
  String email=session.getAttribute("email").toString();
  String oldPassword=request.getParameter("oldPassword");
  String newPassword=request.getParameter("newPassword");
  String confirmPassword=request.getParameter("confirmPassword");
  
  if(!confirmPassword.equals(newPassword))
	  response.sendRedirect("changePassword.jsp?msg=notMatch");
  else
  {
	   int check=0;
	   try{
		    Connection con=ConnectionProvider.getCon();
		    Statement st=con.createStatement();
		    ResultSet rs=st.executeQuery("select *from users where email='"+email+"' and password='"+oldPassword+"'");
		    while(rs.next()){
		    	check=1;
		    	st.executeUpdate("update users set password='"+newPassword+"' where email='"+email+"'");
                response.sendRedirect("changePassword.jsp?msg=done");		    
 		    }
		    if(check==0){
		    	response.sendRedirect("changePassword.jsp?msg=wrong");	
		    }
	   }
	   catch(Exception e){
		   System.out.println(e);
	   }
  }

%>