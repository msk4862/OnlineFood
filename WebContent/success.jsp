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
        <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css">
        <link rel="stylesheet" href="CSS/base.css" type="text/css">
        <style>
        	button.btn.btn-success {
        		font-size: 2.15rem;
        		padding: 0.5rem 2.75rem;
        	}
        	
			input[type="checkbox"] {
				width: 2rem;
				height: 2rem;
				vertical-align: middle;
			}

			.item-container h4 i {
				font-size: 2rem;
				vertical-align: middle;
			}	
					
        </style>
        
        <script>
            var itemInCart = 0;
            function update_value(chk_bx) {
                if (chk_bx.checked) {
                	itemInCart += 1;
                } else {
                    if (itemInCart > 0) {
                    	itemInCart -= 1;
                    }
                }
                
				if(itemInCart == 0) 
	                document.getElementById('total-items').innerHTML = "";
				else
                	document.getElementById('total-items').innerHTML = "(" + itemInCart + ")";
            }
        </script>
    </head>
    <body>
    <%@ include file="header.jsp" %>  
    <div class="jumbotron">
		<h1>Foodpanda</h1>
		<p>Discover the best food & drinks in India</p>
	</div>
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
					        int item_id = 1;
					        
					        item_id = result.getInt(1);
			                name = result.getString(2);
			                price = result.getDouble(3);
			                url = result.getString(4);
			                %>
					    	
					    	<div class="col-12 col-sm-3 mt-2">
				    			<div class="item-container">
				    				<img alt="<%= name %>>" src="<%= url %>" class="rounded">
				    				<div class="p-2">
				    					<h5><%= name %> <span class="badge badge-danger">New</span></h5>
				    					<div class="d-flex flex-row justify-content-between align-items-center">
					    					<p>&#8377; <%= price %></p>	    						
				    						<h4>
				    							<i class="fa fa-cart-plus"></i>
				    							<input class="ml-2" type="checkbox" name="items" value="<%= item_id %>" onchange="update_value(this);">
				    						</h4>	
				    					</div>
				    				</div>
				    			</div>
			    			</div>
			    	<%
					    }
					%>
			    	</div>
			    <div class="d-flex justify-content-center">
		    		<button type="submit" class="btn btn-success">
		    			Proceed <i class="fa fa-shopping-cart"></i><span class="ml-1" id="total-items"></span>
		    		</button>
			    </div>
		    </form>        
        </div>
		
        <%
            }
        %>


    <%@ include file="footer.jsp" %>  

    </body>
</html>
