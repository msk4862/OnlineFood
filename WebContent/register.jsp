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
    <div style="background-image: url('Images/food-wallpaper.jpg');">
    <header>
        <h1><a href="index.jsp">Foodpanda</a></h1>
    	<p>Order fresh food online from your home</p>
    </header>
    <div class="reg-form">
        <fieldset>
            <legend>Create an account</legend>
            <form method="post" action="check.jsp">
            	<div class="form-group row">
				    <div class="col-sm">
				      <input type="text" class="form-control" name="fname" placeholder="First Name" required>
				    </div>
            	</div>
            	<div class="form-group row">
				    <div class="col-sm">
				      <input type="text" class="form-control" name="lname" placeholder="Last Name" required>
				    </div>
            	</div>
				<div class="form-group row">
				    <div class="col-sm">
				      <input type="email" class="form-control" name="email" placeholder="Email" required>
				    </div>
				</div>
				<div class="form-group row">
				    <div class="col-sm">
				      <input type="text" class="form-control" name="uname" placeholder="Username" required>
				    </div>
				</div>
				<div class="form-group row">
				    <div class="col-sm">
				      <input type="password" class="form-control" name="pass" minlength="8" placeholder="Password (Min. 8 characters)" required>
				    </div>
				</div>
				<input type="submit" class="btn btn-primary" value="Sign up"><br><br>
				Already have account?<a href="index.jsp"><input type="button" class="btn btn-warning" value="Sign In"></a>
			
            </form>
        </fieldset>
	</div>
	<%@include file="footer.jsp" %>
    </body>
</html>