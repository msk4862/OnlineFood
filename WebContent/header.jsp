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
	ul {
		list-style-type: none;
		margin: 0;
		padding: 0;
		overflow: hidden;
	}
	li {
  		display: inline;
  		padding: 1rem;
	}
		
</style>

<nav class="navbar">
  <a class="navbar-brand" href="index.jsp">Foodpanda</a>
  	<%
  	if ((session.getAttribute("userid") == null) || (session.getAttribute("userid") == "")) {
  	%>
	<form method="post" action="login.jsp" class="form-inline ml-auto my-2">
	    <input class="form-control mr-sm-2" type="text" name="uname" placeholder="Username" required>
	   	<input class="form-control mr-sm-2" type="password" name="pass" placeholder="Password" required>
	    <button class="btn btn-outline-primary mr-sm-2" type="submit" name="uname">Login</button>
  	</form>
  	<a href="register.jsp"><button class="btn btn-outline-success my-2 my-sm-0 ml-1">Register</button></a>
  	<%
  	}else{
  	%>
  	
  	<div>
        <ul>

            <li>
                <a href="#">Locations</a>
            </li>
            <li>
                <a href="#">Our chefs</a>
            </li>
            <li>
                <a href="#">About us</a>
            </li>
            <li>
                <a href="logout.jsp"><button class="btn btn-outline-success">Logout <i>(<%out.print(session.getAttribute("userid")); %>)</i></button></a>	
            </li>
        </ul>
    </div>
    
    <%} %>
        
</nav>
