<%@page language="java" contentType="text/html" pageEncoding="UTF-8" %>
<%@page import="com.db.utils.DbConnection"%>
<%@page import ="java.sql.*"%>


<%
	// redirect to main page if user is logged in
   	if ((session.getAttribute("userid") != null)) {
      	response.sendRedirect("success.jsp");
	} 
%>

<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Foodpanda</title>
		<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css">
        <link rel="stylesheet" href="CSS/base.css" type="text/css">
    </head>
    <body>
    <%@ include file="header.jsp" %>
    
	<div class="jumbotron">
		<h1>Foodpanda</h1>
		<p>Discover the best food & drinks in India</p>
	</div>
    
    <div class="container mt-4">
    	<h4>We offer following dishes...</h4>
    	
    	<div class="row mt-4">
		
		<%
		    Connection con = DbConnection.init();
		    Statement st = con.createStatement();
		    ResultSet result;
		
		    result = st.executeQuery("select * from items");
		    while(result.next()) {
		        String name = "", url = "";
		        double price = 0.0;
		        
                name = result.getString(2);
                price = result.getDouble(3);
                url = result.getString(4);
                %>
		    	
		    	<div class="col-12 col-sm-3 mt-2">
	    			<div class="item-container">
	    				<img alt="<%= name %>>" src="<%= url %>" class="rounded">
	    				<div class="p-2">
	    					<h5><%= name %></h5>
	    					<p>&#8377; <%= price %></p>
	    				</div>
	    			</div>
    			</div>
    	<%
		    }
		%>
    	</div>
    	
    </div>
    <%@ include file="footer.jsp" %>  
</body>
</html>


