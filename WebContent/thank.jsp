<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Thank You</title>
        <meta name="viewport" content="width=device-width, initial-scale=1">
        <style type="text/css">
	        html,body {
			  height: 100vh;
			  margin: 0;
			}
			body{ 
			  display:flex; 
			  flex-direction:column; 
			}
			
			footer{
			  margin-top:auto; 
			}
			span{
				padding: 5rem;
			}
        </style>
        <link rel="stylesheet" href="CSS/register.css" type="text/css">
        <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.1.3/css/bootstrap.min.css">
        <link rel="stylesheet" href="CSS/base.css" type="text/css">
    </head>
    <body>

	<%
	    if ((session.getAttribute("userid") == null) || (session.getAttribute("userid") == "")) {
	
	%>
	<div align="center">
	    <img src="Images/112.gif" height=200 width=200><br>
	    You must logged in first.<br/>
	    <a href="index.jsp" style="text-decoration:none;font-size:23px;color:#009afd;padding-top:23px">Please Login</a>
	</div>
	<% } else {
	
	%>
	<%@ include file="header.jsp" %>  
	<span>	<h1>Thank you for making Order.....<br>
	        It will delivered to you within next 30 minutes...</h1>
	</span>
	<footer><%@ include file="footer.jsp" %></footer>
		
	</body>
</html>
<% }%>