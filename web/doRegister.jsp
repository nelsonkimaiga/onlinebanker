<%@page contentType="text/html;" language="java" import="java.sql.*, com.onlinebank.BankCommons"  errorPage="" %>

<%
//java Code
String uname = request.getParameter("username");
String password = request.getParameter("password");
String question = request.getParameter("question");
String answer = request.getParameter("answer");
String address = request.getParameter("address");
String email = request.getParameter("email");
String mobile = request.getParameter("mobile");
String sql = "INSERT INTO user_details (uname, upass, sec_question, answer, address, email, mobile ) VALUES ('"+uname+"','"+password+"','"+question+"','"+answer+"','"+address+"','"+email+"','"+mobile+"')";
//System.out.println(sql);
int update = BankCommons.update(sql);

%>
<!DOCTYPE html>
<html class="no-js" lang="en" dir="ltr">
    <head>
        <title>Online Banker</title>
        <meta charset="UTF-8">
        <meta http-equiv="X-UA-Compatible" content="IE=edge">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <link href="css/foundation.css" rel="stylesheet" type="text/css">
        <!--fonts-->
        <link href='https://fonts.googleapis.com/css?family=Raleway' rel='stylesheet' type='text/css'>
        <link href="css/app.css" rel="stylesheet" type="text/css">
    </head>
    <body>
        <div class="container" id="bodycontent">
            	<% 
	if(update == 1){
	%>
	Your account has been created Successfully.<br/><a href="index.html">Click Here</a> to Login and Activate Your Account.
	<%
	}else {
	%>
	<p>Sorry. Account is not created.<br/>Click Here to <a href="register.jsp">Register Again</a></p>
	<%
	}
	 %>
        </div
        
        
     <script src="js/vendor/foundation.js"></script>
     <script src="js/vendor/what-input.js"></script>
     <script src="js/jquery.countdown.min.js"></script>
     <script src="js/app.js"></script>
    </body>
</html>
