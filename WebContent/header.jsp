<style>
	.navbar {
		background-color: #E23744;
		color: #fff;
	}
	.navbar-brand {
		font-size: 2rem;
		color: #fff;
	}
	button.btn {
		color: #fff;
		padding: 6px 10px;
	}
</style>

<nav class="navbar">
  <a class="navbar-brand" href="index.jsp">Foodpanda</a>
	<form method="post" action="login.jsp" class="form-inline ml-auto">
	    <input class="form-control mr-sm-2" type="text" name="uname" placeholder="Username">
	   	<input class="form-control mr-sm-2" type="password" name="pass" placeholder="Password"/>
	    <button class="btn btn-outline-primary my-sm-0" type="submit" name="uname">Login</button>
  	</form>
  <a href="register.jsp"><button class="btn btn-outline-success my-2 my-sm-0 ml-2">Register</button></a>
</nav>

