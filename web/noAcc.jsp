<%@ page contentType="text/html; charset=iso-8859-1" language="java" import="java.sql.*,com.onlinebank.BankCommons" errorPage="" %>
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
        <nav class="nav ">
            <div class="nav-center">
                <a href="main.jsp">Welcome,&nbsp;<%= (String)session.getAttribute("cust_name")%></a>
                <div class="nav-mobile">
                    <ul class="left">
                        <li><a href="account.jsp">Create Account</a></li>
                        <li><a href="deposite.jsp">Deposit</a></li>
                    </ul>
                    <ul class="right">
                        <li><a href="get-balance.jsp">Get Balance</a></li>
                        <li><a href="transfer.jsp">Transfer Amount</a></li>
                        <li><a href="view-reports.jsp">View Report</a></li>
                        <li><a href="logOff.jsp">LogOut</a></li>
                    </ul>
                </div>
            </div>
        </nav>
                <div class="container" id="bodycontent">
                    <p>
                        You do not have any account created.<br/>
                        To create Your Account <a href="account.jsp">Click Here</a>
                        <br/>
                        Or to Log out, <a href="logOff.jsp">Click Here</a>
                    </p>
                </div>
                
        <script src="js/vendor/foundation.js"></script>
        <script src="js/vendor/what-input.js"></script>
        <script src="js/jquery.countdown.min.js"></script>
        <script src="js/app.js"></script>
    </body>
</html>
