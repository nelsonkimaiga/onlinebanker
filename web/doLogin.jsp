<%@page contentType="text/html" language="java" import="java.sql.*,com.onlinebank.BankCommons" errorPage="" %>

<%
//java Code
String uname = request.getParameter("username");
String password = request.getParameter("password");
String sql = "SELECT uname, upass FROM user_details WHERE uname ='"+uname+"' AND upass = '"+password+"'";
//System.out.println(sql);
boolean ck = BankCommons.checkUser(sql);
if(ck == true ){
	session.setAttribute("cust_name",uname);
}else {
	response.sendRedirect("index.html");
}

%>
<!DOCTYPE html>
<html cla5ss="no-js" lang="en" dir="ltr">
    <head>
        <title>Welcome</title>
        <meta charset="UTF-8">
        <meta http-equiv="X-UA-Compatible" content="IE=edge">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <link href="css/foundation.css" rel="stylesheet" type="text/css">
        <!--fonts-->
        <link href='https://fonts.googleapis.com/css?family=Raleway' rel='stylesheet' type='text/css'>
        <link href="css/app.css" rel="stylesheet" type="text/css">
    </head>
    <body>
        <nav class="nav ">
            <div class="nav-center">
                <a class="toggle-nav" href="">Welcome,&nbsp;<%= uname %></a>
                <div class="nav-mobile">
                    <ul class="left">
                        <li><a href="account.jsp">Create Account</a></li>
                    </ul>
                    <ul class="right">
                        <li>
                            <a href="get-balance.jsp">Get Balance</a>
                        </li>
                        <li><a href="view-reports.jsp">View Report</a></li>
                        <li><a href="logOff.jsp">LogOut</a></li>
                    </ul>
                </div>
            </div>
        </nav>
                <br>
                
                <div class="container bodycontent">
                    <p>Welcome! Choose from one of the options below</p>
                    <div class="row">
                        <div class="large-6 large-centered columns">
                            
                            <a href="account.jsp">Create Account</a>
                            <hr>
                            <a href="get-balance.jsp">Get Balance</a>
                            <hr>
                            
                            <a href="view-reports.jsp">View Report</a>
                            <hr>
                            <a href="logOff.jsp">LogOut</a></li>
                    
                        </div>
                        
                    </div>
                </div>
    </body>
</html>
