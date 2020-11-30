<%
	if ((session.getAttribute("userid") == null)) {
		response.sendRedirect("index.jsp");
	}
%>

<html>
	<head>
		<title>Delivery Details</title>
		<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css">
		<link rel="stylesheet" href="CSS/base.css" type="text/css">
		<style>
			.reg-form {
				display: flex;
				flex-direction: column;
				justify-content: center;
				text-align: center;
				margin-bottom: 2rem;
				min-height: 400px;
			}
			
			.reg-form form {
				margin-left: auto;
				margin-right: auto;
			}
		</style>
	</head>
	<body>
	<%@ include file="header.jsp"%>
	<div style="background-image: url('Images/food-wallpaper.jpg');">
	<div class="container">
			<div class="reg-form">
				<h3 class="mt-4">Enter Delivery Details</h3>
				<form class="col-12 col-sm-5 mt-4" method="post" action="thank.jsp">
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
								<option value="1" selected disabled><--- choose city---></option>
								<option value="Delhi">Delhi</option>
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
								<option value="1" selected disabled><--- choose region---></option>
								<option value="shirish">Delhi</option>
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
					<div class="form-group row">
						<div class="col-sm">
							<input type="number" class="form-control" name="pincode"
								placeholder="Pincode" required>
						</div>
					</div>
					<br>
					<input type="submit" class="btn btn-success btn-lg btn-block" value="Place Order">
				</form>
			</div>
			
	</div>
	<footer><%@ include file="footer.jsp"%>
	</footer>
</html>