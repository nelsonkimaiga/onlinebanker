<%@ page contentType="text/html; charset=iso-8859-1" language="java" import="java.sql.*,java.util.*,com.onlinebank.BankCommons" errorPage="" %>
<%
//java Code

String uname = (String)session.getAttribute("cust_name");
String sql = "SELECT acc_no FROM acc_details WHERE uname ='"+uname+"'";
//System.out.println(sql);
ArrayList one = BankCommons.getAccountNoByName(sql);
int size = one.size();
if(size < 1) {
	response.sendRedirect("noAcc.jsp");
}
System.out.println(one);
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
        <script type="text/JavaScript">
            function MM_findObj(n, d) { //v4.01
              var p,i,x;  if(!d) d=document; if((p=n.indexOf("?"))>0&&parent.frames.length) {
                d=parent.frames[n.substring(p+1)].document; n=n.substring(0,p);}
              if(!(x=d[n])&&d.all) x=d.all[n]; for (i=0;!x&&i<d.forms.length;i++) x=d.forms[i][n];
              for(i=0;!x&&d.layers&&i<d.layers.length;i++) x=MM_findObj(n,d.layers[i].document);
              if(!x && d.getElementById) x=d.getElementById(n); return x;
            }

            function MM_validateForm() { //v4.0
              var i,p,q,nm,test,num,min,max,errors='',args=MM_validateForm.arguments;
              for (i=0; i<(args.length-2); i+=3) { test=args[i+2]; val=MM_findObj(args[i]);
                if (val) { nm=val.name; if ((val=val.value)!="") {
                  if (test.indexOf('isEmail')!=-1) { p=val.indexOf('@');
                    if (p<1 || p==(val.length-1)) errors+='- '+nm+' must contain an e-mail address.\n';
                  } else if (test!='R') { num = parseFloat(val);
                    if (isNaN(val)) errors+='- '+nm+' must contain a number.\n';
                    if (test.indexOf('inRange') != -1) { p=test.indexOf(':');
                      min=test.substring(8,p); max=test.substring(p+1);
                      if (num<min || max<num) errors+='- '+nm+' must contain a number between '+min+' and '+max+'.\n';
                } } } else if (test.charAt(0) == 'R') errors += '- '+nm+' is required.\n'; }
              } if (errors) alert('The following error(s) occurred:\n'+errors);
              document.MM_returnValue = (errors == '');
            }
                </script>
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
                
            </div>
        </div>

	<form id="form1" name="form1" method="post" action="doDeposite.jsp">
          <label>Deposit Amount in Account</label>
          <label>Account Holder Name </label>
            <input name="uname" type="text" id="uname"  readonly="true" value="<%= (String)session.getAttribute("cust_name")%>">
            <label>Account Number </label>
            <select name="accNo">
			<%
			for(int i=0; i<one.size(); i++) {
			%>
			<option value="<%=(String)one.get(i)%>">Acc No : <%=(String)one.get(i)%></option>
			<% } %>
            </select>
            <label>Deposit Amount Kshs</label>
            <input name="Amount" type="text" id="Amount" size="10">  
            <button name="Submit" class="button primary" type="submit" onclick="MM_validateForm('Amount','','RisNum');return document.MM_returnValue" value="Deposit Amount">Deposit Amount</button>
        </form>
    </body>
</html>
