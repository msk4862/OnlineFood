<%@page import="java.util.Date"%>
<%@page import="java.text.SimpleDateFormat"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Thank You</title>
<meta name="viewport" content="width=device-width, initial-scale=1">
<style type="text/css">
html, body {
	height: 100vh;
	margin: 0;
}

body {
	display: flex;
	flex-direction: column;
}

footer {
	margin-top: auto;
}

h1 {
	padding: 5rem;
}
</style>
<link rel="stylesheet" href="CSS/register.css" type="text/css">
<link rel="stylesheet"
	href="https://stackpath.bootstrapcdn.com/bootstrap/4.1.3/css/bootstrap.min.css">
<link rel="stylesheet" href="CSS/base.css" type="text/css">
</head>
<body>

	<%
		if ((session.getAttribute("userid") == null) || (session.getAttribute("userid") == "")) {
	%>
	<div align="center">
		<img src="Images/112.gif" height=200 width=200><br> You
		must logged in first.<br /> <a href="index.jsp"
			style="text-decoration: none; font-size: 23px; color: #009afd; padding-top: 23px">Please
			Login</a>
	</div>
	<%
		} else {
	%>
	<%@ include file="header.jsp"%>
	<h1>
		Thank you for making Order.....<br> It will delivered to you
		within next 30 minutes...
	</h1>
	<div class="card text-white bg-danger mb-3 mx-auto"
		style="width: 25rem;">
		<div class="card-header">
			<h4>Order Details</h4>
		</div>
		<div class="card-body">
			<h5 class="card-title">
				Order number:
				<%=(int) (Math.random() * 1e5)%></h5>
			<h5 class="card-title">
				Order Time:
				<%
				SimpleDateFormat formatter = new SimpleDateFormat("dd/MM/yyyy HH:mm:ss");
					Date date = new Date();
					out.println(formatter.format(date));
			%>
			</h5>
		</div>
	</div>
	<footer><%@ include file="footer.jsp"%></footer>

</body>
</html>
<%
	}
%>