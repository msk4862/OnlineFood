<%@page import="java.util.Date"%>
<%@page import="java.text.SimpleDateFormat"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<%
	// redirect to home page if user not logged in
   	if ((session.getAttribute("userid") == null)) {
      	response.sendRedirect("index.jsp");
	} 
%>

<!DOCTYPE html>
<html>
	<head>
		<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
		<title>Thank You</title>
		<meta name="viewport" content="width=device-width, initial-scale=1">
		<link rel="stylesheet" href="CSS/register.css" type="text/css">
		<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css">
		<link rel="stylesheet"
			href="https://stackpath.bootstrapcdn.com/bootstrap/4.1.3/css/bootstrap.min.css">
		<link rel="stylesheet" href="CSS/base.css" type="text/css">
		
		<style>
			.receipt {
				margin-top: 5rem;
				margin-bottom: 5rem;
			}
			.receipt .card {
				padding: 0;
				box-shadow: 0 5px 8px 5px rgba(0,0,0, 0.12);
			}
			
			.receipt .card-header {
				background-color: #E23744;
				color: #fff;
			}
			.receipt p {
				font-size: 1.25rem;
			}
		</style>
	</head>
	<body>
	<%@ include file="header.jsp"%>
	
	<div class="container mt-4">
		
		<h1>Thank you for making Order <i class="fa fa-cutlery"></i></h1>
		<p>It will delivered to you within next 30 minutes...🕒</p>
		
		<%
	        String name = request.getParameter("fullname");
	        String number = request.getParameter("number");
	        String address = request.getParameter("address");
	        String pincode = request.getParameter("pincode");
		%>
		
		<div class="row justify-content-center receipt">
			<div class="col-12 col-sm-6 card mb-3 mx-auto">
				<div class="card-header bg-danger">
					<h4>Order Details</h4>
				</div>
				<div class="card-body">
					<p>Order number: <strong><%=(int) (Math.random() * 1e5)%></strong></p>
					<p>
						Order Time:
						<strong>
							<%
							SimpleDateFormat formatter = new SimpleDateFormat("dd/MM/yyyy HH:mm:ss");
								Date date = new Date();
								out.println(formatter.format(date));
							%>
						</strong>
					</p>
					<p>Name: <strong><%= name %></strong></p>
					<p>Mobile No.: <strong><%= number %></strong></p>
					<p>Address: <strong><%= address %></strong></p>
					<p>Pincode: <strong><%= pincode %></strong></p>

				</div>
			</div>
		</div>
		
		<div class="d-flex justify-content-center">
			<a href="index.jsp">
				<button class="btn btn-success btn-lg btn-block mr-2" >
					Return to home <i class="fa fa-home"></i>
				</button>
			</a>
		</div>
	</div>
	
	<footer><%@ include file="footer.jsp"%></footer>
</body>
</html>