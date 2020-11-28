<%@page language="java" contentType="text/html" pageEncoding="UTF-8" %>
<%@page import="com.db.utils.DbConnection"%>
<%@page import ="java.sql.*"%>

<%
    if ((session.getAttribute("userid") == null)) {
    	response.sendRedirect("index.jsp");
	}else {
%>
<!DOCTYPE html>
<html>
    <head>
	    <title>Foodpanda</title>
	    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.1.3/css/bootstrap.min.css">
        <link rel="stylesheet" href="CSS/base.css" type="text/css">
        
        <style>
        	input[type="submit"] {
        		font-size: 3rem;
        		padding: 0.5rem 3rem;
        	}
        </style>
    </head>
    <body>
    <%@ include file="header.jsp" %>  
    <div class="jumbotron">
		<h1>Foodpanda</h1>
		<p>Discover the best food & drinks in India</p>
	</div>
    
        <script>
            var b = 0;
            function update_value(chk_bx) {
                if (chk_bx.checked)
                {
                    var a = "checked";
                    b += 1;
                } else {
                    var a = "not checked";
                    if (b > 0) {
                        b -= 1;
                    } else if (b == 0) {
                        b = 0;
                    }
                }
                if (b == 0)
                {
                    document.getElementById('wish').innerHTML = '<img src="Images/shopping-cart.png" height=40 width=40>&nbsp&nbsp0';

                } else {
                    document.getElementById('wish').innerHTML = '<img src="Images/shopping-cart.png" height=40 width=40>&nbsp&nbsp' + b + '';
                }
            }
        </script>
    </head>
    <body>        
       <div class="container mt-4">
		   <h4>We offer following dishes...</h4>

        		<form method="post" action="order.jsp">
		    	
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
			    <div class="d-flex justify-content-center">
		    	<input type="submit" value="Proceed" class="btn btn-success" />
			    </div>
		    </form>        
        </div>
		
        <%
            }
        %>


    <%@ include file="footer.jsp" %>  

    </body>
</html>
