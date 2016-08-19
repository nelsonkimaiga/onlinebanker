<%@ page contentType="text/html; charset=iso-8859-1" language="java" import="java.sql.*,java.util.*,com.onlinebank.BankCommons" errorPage="" %>
<%
//java Code

String uname = (String)session.getAttribute("cust_name");
int accNo = Integer.parseInt(request.getParameter("accNo"));
String sql = "SELECT acc_no, acc_type FROM acc_details WHERE uname='"+uname+"'";
//System.out.println(sql);
String bal_sql = "SELECT balance FROM tx_details WHERE uname='"+uname+"' AND acc_no = "+accNo+" AND isnew = 'YES'";
//System.out.println(bal_sql);
int bal = BankCommons.getBalance(bal_sql);
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
                <a href="">Welcome,&nbsp;<%= (String)session.getAttribute("cust_name")%></a>
                <div class="nav-mobile">
                    <ul class="left">
                        <li><a href="account.jsp">Create Account</a></li>
                        <li><a href="deposite.jsp">Deposit</a></li>
                    </ul>
                    <ul class="right">
                        <li><a href="get-balance.jsp">Get Balance</a></li>
                        <!--<li><a href="transfer.jsp">Transfer Amount</a></li>-->
                        <li><a href="view-reports.jsp">View Report</a></li>
                        <li><a href="logOff.jsp">LogOut</a></li>
                    </ul>
                </div>
            </div>
        </nav>
                <br>
                <div class="container bodycontent">
                    <div class="row">
                        <div class="large-6 large-centered columns"> 
                            <form id="form1" name="form1" method="post" action="">
                                <p>Your Current Balance is As Follows </p>
                                <label>Customer Name </label>
                                <p><%=uname%></p>
                                <label>Account No.</label>
                              <p>&nbsp;<%=accNo%></p>
                              <label>Current Balance </label>
                              <%=bal%> Kshs.
                              <p>&nbsp;If you want to Deposit then <a href="deposite.jsp">
                                      Click Here</a>
                            </form>
                        </div>
                    </div>
                </div>

    </body>
</html>
