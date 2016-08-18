<%@ page contentType="text/html; charset=iso-8859-1" language="java" import="java.sql.*,com.onlinebank.BankCommons" errorPage="" %>
<%
//java Code
java.util.Random r = new java.util.Random();
int accNo = r.nextInt(10000000);
/*
String uname = request.getParameter("username");
String password = request.getParameter("password");
String sql = "SELECT uname, upass FROM user_details WHERE uname ='"+uname+"' AND upass = '"+password+"'";
//System.out.println(sql);
boolean ck = BankCommons.checkUser(sql);
if(ck == true ){
	session.setAttribute("cust_name",uname);
}else {
	response.sendRedirect("index.jsp");
}
*/
%>
<!DOCTYPE html>
<html class="no-js" lang="en" dir="ltr">
    <head>
        <title>Account</title>
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
                <div class="container" id="bodycontent">
                    <div class="row">
                        <div class="large-6 large-centered columns">
                        <h3>Create Bank Account</h3>
                        <form id="form1" name="form1" method="post" action="doAccount.jsp">
                            <label>Account Holder Name </label>
                            <input name="uname" type="text" id="uname"  readonly="true" value="<%= (String)session.getAttribute("cust_name")%>">
                            <label>Account Number </label>
                            <input name="accno" type="text" id="accno"  readonly="true" value="<%=accNo%>">
                            <label>Account Type </label>
                            <select name="acc_type">
                                <option value="CURRENT"> Current Account</option>
                                <option value="SAVING"> Saving Account</option>
                                <option value="STUDENT"> Student Account</option>
                      </select>
                            <label>Account Details</label>
                            <textarea name="details" rows="3" id="details"></textarea>
                            <button type="submit" class="button success" name="Submit" value="Create Account">Create Account</button>
                        </form>
                    </div>
                            <div>
                </div>
                            
    <script src="js/vendor/foundation.js"></script>
     <script src="js/vendor/what-input.js"></script>
     <script src="js/jquery.countdown.min.js"></script>
     <script src="js/app.js"></script>
    </body>
</html>
