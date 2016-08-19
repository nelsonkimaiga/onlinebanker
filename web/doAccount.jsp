<%@page contentType="text/html;" language="java" import="java.sql.*,com.onlinebank.BankCommons" errorPage="" %>

<%
//java Code
String uname = request.getParameter("uname");
int accno = Integer.parseInt(request.getParameter("accno"));
String acc_type = request.getParameter("acc_type");
String details = request.getParameter("details");
String sql = "INSERT INTO acc_details VALUES ("+accno+",'"+uname+"','"+acc_type+"','"+details+"')";
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
                <br>
                <div  class="container" id=" bodycontent">
                    <div class="row">
                        <div class="large-6 large-centered columns">
                            <p>
                                Your account is successfully created. and Account No. is <%=accno%>.
                                <br/>
                                To Deposit Amount in Your Account <a href="deposite.jsp">Click Here</a><br/>
                            </p>
                        </div>
                    </div>
                </div>
                                
        <script src="js/vendor/foundation.js"></script>
        <script src="js/vendor/what-input.js"></script>
        <script src="js/jquery.countdown.min.js"></script>
        <script src="js/app.js"></script>
    </body>
</html>
