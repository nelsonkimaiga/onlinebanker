<%@page contentType="text/html;" language="java" import="java.sql.*" errorPage="" %>
<!DOCTYPE html>
<html class="no-js" lang="en" dir="ltr">
    <head>
        <title>Register</title>
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
        <div class="container">
            <div class="row">
                <div class="large-6 columns">
                    <form id="form1" name="form1" method="post" action="doRegister.jsp">
                        <h4>Customer Registration For new Account</h4>
                        <label>Username</label>
                        <input name="username" type="text" id="username">
                        <label>Password</label>
                        <input name="password" type="password" id="password">
                        <label>Security Question</label>
                        <select name="question">
                            <option value="Your First School Name">Your First School Name?</option>
                            <option value="Your Car Number">Your Car Number?</option>
                            <option value="Your Mothers Name">Your Mothers Name?</option>
                            <option value="Favorite Color">Favorite Color?</option>
                        </select>
                        <label>Answer</label>
                        <input name="answer" type="text" id="answer" size="30">
                        <label>Address</label>
                        <textarea name="address" id="address"></textarea>
                        <label>E-mail:</label>
                        <input name="email" type="email" id="email">
                        <label>Mobile Number</label>
                        <input name="mobile" type="number" id="mobile">
                        <button type="reset" class="button alert" name="Submit2" value="Reset">Reset</button>
                        <button name="Submit" class="button success" type="submit" onclick="MM_validateForm('username','','R','answer','','R','email','','RisEmail','mobile','','R','address','','R','password','','R');return document.MM_returnValue" value="Create Account">Create Account</button>
                    </form>
                </div>
                
     <script src="js/vendor/foundation.js"></script>
     <script src="js/vendor/what-input.js"></script>
     <script src="js/jquery.countdown.min.js"></script>
     <script src="js/app.js"></script>
            </body>
</html>
