<html>
<head>
<title>Post Order</title>
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css">
<link rel="stylesheet" href="CSS/base.css" type="text/css">
<style type="text/css">
html, body {
	height: 100vh;
	margin: 0;
}

body {
	background-image: url("Images/food-wallpaper.jpg");
	display: flex;
	flex-direction: column;
}

footer {
	margin-top: auto;
}

h1 {
	padding: 5rem;
}
.reg-form {
	display: flex;
	justify-content: center;
	text-align: center;
	margin-top: 1.5rem;
	min-height: 400px;
}

.reg-form fieldset {
	width: 420px;
}
</style>
</head>
<body>
	<%
		if ((session.getAttribute("userid") == null)) {
			response.sendRedirect("index.jsp");
		}
	%>

	<%@ include file="header.jsp"%>

	<div class="reg-form">
		<fieldset>
			<h3>Enter Delivery Details</h3><br>
			<form method="post" action="thank.jsp">
				<div class="form-group row">
					<div class="col-sm">
						<input type="text" class="form-control" name="fullname"
							placeholder="Full Name" required>
					</div>
				</div>
				<div class="form-group row">
					<div class="col-sm">
						<input type="number" class="form-control" name="number"
							placeholder="Mobile No." required>
					</div>
				</div>
				<div class="form-group row">
					<div class="col-sm">
						<input type="email" class="form-control" name="email"
							placeholder="Email Address" required>
					</div>
				</div>
				<div class="form-group row">
					<div class="col-sm">
						<select id="inputState" class="form-control">
							<option value="1" selected disabled><--- choose city
								---></option>
							<option value="sangamner">Sangamner</option>
							<option value="pune">Pune</option>
							<option value="nasik">Nashik</option>
							<option value="shirdi">Shirdi</option>
						</select>
					</div>
				</div>
				<div class="form-group row">
					<div class="col-sm">
						<select id="inputRegion" class="form-control">
							<option value="1" selected disabled><--- choose region
								---></option>
							<option value="shirish">Amrutnagar</option>
							<option value="rohan">Sangamner Bazar Peth</option>
							<option value="shubham">Maldad Road Sangamner</option>
							<option value="prasad">Akole Bypass, Sangamner</option>
							<option value="amit">Pune Bypass, Samnapur Area</option>
						</select>
					</div>
				</div>
				<div class="form-group row">
					<div class="col-sm">
						<input type="text" class="form-control" name="address"
							placeholder="Full Delivery Address" required>
					</div>
				</div>
				<br>
				<input type="submit" class="btn btn-primary btn-lg btn-block" value="Place Order">
			</form>
		</fieldset>
	</div>
	<footer><%@ include file="footer.jsp"%>
	</footer>
</html>