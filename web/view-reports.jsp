<%@page contentType="text/html;" language="java" import="java.sql.*,java.util.*,com.onlinebank.BankCommons" errorPage="" %>

<%
//java Code

String uname = (String)session.getAttribute("cust_name");
String sql = "SELECT acc_no, operation, amt, balance, time1 FROM tx_details WHERE uname='"+uname+"'";
//System.out.println(sql);
ArrayList one = BankCommons.getAccountDetailsByName(sql);
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
                <a href="">Welcome,&nbsp;<%= (String)session.getAttribute("cust_name")%></a>
                <div class="nav-mobile">
                    <ul class="left">
                        <li><a href="account.jsp">Create Account</a></li>
                        <li><a href="deposite.jsp">Deposit</a></li>
                    </ul>
                    <ul class="right">
                        <li><a href="get-balance.jsp">Get Balance</a></li>
                        <!--<li><a href="transfer.jsp">Transfer Amount</a></li>-->
                        <!--<li><a href="view-reports.jsp">View Report</a></li>-->
                        <li><a href="logOff.jsp">LogOut</a></li>
                    </ul>
                </div>
            </div>
    </nav>
                <div class="container bodycontent">
                    	<form id="form1" name="form1" method="post" action="get-balance-fanal.jsp">
	  <table width="96%" border="0" align="center" cellpadding="2" cellspacing="2">
        <tr>
          <th colspan="5" bgcolor="#333333" scope="col"><font color="#FFFFFF">Following are the Repost of Your Account(s). </font></th>
        </tr>
        <tr>
          <td colspan="5">&nbsp;</td>
          </tr>
        <tr>
          <td bgcolor="#2175BC"><div align="center" class="style2">Acc No. </div></td>
          <td bgcolor="#2175BC"><div align="center" class="style2">Operation</div></td>
          <td bgcolor="#2175BC"><div align="center" class="style2">Amt</div></td>
          <td bgcolor="#2175BC"><div align="center" class="style2">Balance</div></td>
          <td bgcolor="#2175BC"><div align="center" class="style2">Date - Time </div></td>
        </tr>
		<%
		for(int i=0;i<one.size();i++) {
		ArrayList o = (ArrayList)one.get(i); 
		%>
        <tr>
          <td><div align="center"><%=(String)o.get(0)%></div></td>
          <td><div align="center"><%=(String)o.get(1)%></div></td>
          <td><div align="center"><%=(String)o.get(2)%></div></td>
          <td><div align="center"><%=(String)o.get(3)%></div></td>
          <td><div align="center"><%=(String)o.get(4)%></div></td>
        </tr>
		<% } %>
        <tr>
          <td>&nbsp;</td>
          <td>&nbsp;</td>
          <td>&nbsp;</td>
          <td>&nbsp;</td>
          <td>&nbsp;</td>
        </tr>
        <tr>
          <td width="14%">&nbsp;</td>
          <td width="14%">&nbsp;</td>
          <td width="15%">&nbsp;</td>
          <td width="16%">&nbsp;</td>
          <td width="41%">&nbsp;</td>
        </tr>
      </table>
      </form>
                </div>

</body>

</html>
