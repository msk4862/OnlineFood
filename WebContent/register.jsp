<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Registration</title>
        <meta name="viewport" content="width=device-width, initial-scale=1">
        <link rel="stylesheet" href="CSS/register.css" type="text/css">
        <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.1.3/css/bootstrap.min.css">
        <link rel="stylesheet" href="CSS/base.css" type="text/css">
    </head>
    <body>
    <header>
        <h1><a href="index.jsp">Foodpanda</a></h1>
    	<p>Order fresh food online from your home</p>
    </header>
    <div class="reg-form">
        <fieldset class="fieldset">
            <legend>Create an account</legend>
            <form method="post" action="check.jsp">
                <table>
                    <tr>
                        <td>Firstname</td>
                        <td><input class="w3-input" type="text" name="fname" value="" required/></td>
                    </tr>
                    <tr>
                        <td>Lastname</td>
                        <td><input class="w3-input" type="text" name="lname" value="" required/></td>
                    </tr>
                    <tr>
                        <td>Email</td>
                        <td><input class="w3-input" type="text" name="email" value="" required/></td>
                    </tr>
                    <tr>
                        <td>Username</td>
                        <td><input class="w3-input" type="text" name="uname" value="" required/></td>
                    </tr>
                    <tr>
                        <td>Password</td>
                        <td><input class="w3-input" type="password" name="pass" value="" required/></td>
                    </tr>
                    
                    <div class="btn-group">
	                    <tr>
	                        <td colspan="2" align="center"><input type="submit" value="Sign up" class="btn btn-success"/></td>
	                    </tr>
	                    <tr>
	                        <td colspan="2" align="right">  Already have account <a href="index.jsp"><input type="button" class="btn btn-warning" value="Sign In"></a></td>
	                    </tr>
                    </div>
            
                </table>
            </form>
        </fieldset>
	</div>
	<%@include file="footer.jsp" %>
    </body>
</html>