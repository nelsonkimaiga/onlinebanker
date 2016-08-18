<%@ page contentType="text/html; charset=iso-8859-1" language="java" import="java.sql.*,java.util.*,com.onlinebank.BankCommons" errorPage="" %>
<%
//java Code

String uname = (String)session.getAttribute("cust_name");
String sql = "SELECT acc_no, acc_type FROM acc_details WHERE uname='"+uname+"'";
//System.out.println(sql);
ArrayList one = BankCommons.getAccountByName(sql);
//System.out.println(one);
int size = one.size();
if(size < 1) {
	response.sendRedirect("noAcc.jsp");
}
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
                <div class="container" id="bodycontent">
                    <div class="row">
                        <div class="large-6 large-centered columns">
                            <h4>Please Select the Account to Check Your Current Balance </h4>
                            <form id="form1" name="form1" method="post" action="get-balance-fanal.jsp">
                                <label>Account Holder Name </label>
                                    <%= uname %>
                                    <br>
                                    <label>Select Account No.</label>
                                    <select name="accNo">
                                        <%
			for(int i=0; i<size; i++){
			ArrayList o = (ArrayList)one.get(i);
			%>
                        <option value="<%=(String)o.get(0)%>" ><%=(String)o.get(0)%> ::<%=(String)o.get(1)%></option>
              <% } %>
                                    </select>
                                    <button type="submit" class="button success" name="Submit" value="Check Balance">Check Balance</button>
                            </form>
                        </div>
                    </div>
                </div>
                                    
     <script src="js/vendor/foundation.js"></script>
     <script src="js/vendor/what-input.js"></script>
     <script src="js/jquery.countdown.min.js"></script>
     <script src="js/app.js"></script>
    </body>
</html>
