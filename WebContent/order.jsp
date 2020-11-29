<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page import ="java.sql.*"%>
<%@ page import="java.util.ArrayList" %>
<%@ page import="com.db.utils.DbConnection"%>

<%
	// redirect to home page if user not logged in
   	if ((session.getAttribute("userid") == null)) {
      	response.sendRedirect("index.jsp");
	} 
%>

<html>
    <head>
	    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
	    <title>Confirm your Order</title>
	    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css">
	    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css">
	    <link rel="stylesheet" href="CSS/order.css" type="text/css">
	    <link rel="stylesheet" href="CSS/base.css" type="text/css">
	</head>
	<body>
		<%@ include file="header.jsp" %>
		<div class="checkout-container container">
		
		 <%  
	    	Connection con = DbConnection.init();
	    	Statement st = con.createStatement();
	    	ResultSet rs;
	    	ArrayList arraylist = new ArrayList<Double>();
	    	// returns the list of item ids selected using checkboxes
	        String[] items = request.getParameterValues("items");
	    	
	    	// no items are selected
	    	// if(items == null)	response.sendRedirect("success.jsp");
	    %>
	    
	    <div class="d-flex justify-content-between">
		    <p>Items cooking in your cooker <i class="fa fa-cutlery"></i></p>
		   	<a href="success.jsp"><button class="btn btn-primary" type="button"><i class="fa fa-cart-plus"></i> Add more items</button></a>
	    </div>
	    
	    <div class="row justify-content-center">
	    	<div class="col-12 col-sm-10">
	    		<table class="table table-bordered">
			    	<tr>
			    		<th>Item Name</th><th>Quantity</th><th>Total</th>
			    	</tr>
			    
				    <%
				    	float totalAmount = 0;
				        int totalItems = 0;
				        if (items != null) {
				            for (int i = 0; i < items.length; i++) {
				                st.executeQuery("select item_name, price_rupee, item_image_url from items where id=" + items[i] + "");
				                rs = st.getResultSet();
				                while (rs.next()) {
				                    String itemName = rs.getString("item_name");
				                    String itemImageUrl = rs.getString("item_image_url");
				                    double itemPrice = rs.getInt("price_rupee");
					                int qunatity = 1;
				    %>
				    <input type='hidden' id='cost' value="<%= itemPrice %>" />
				    <%
				                arraylist.add(itemPrice);
				    			totalAmount += itemPrice;
				    			totalItems++;
				                out.print(
				                        "<tr><td><img alt='"+ itemName + "' src='" + itemImageUrl +"' /><span class='ml-2'>" + itemName + "</span></td><td>" + qunatity + "</td><td><div id='total1'>" + itemPrice + "</div></td></tr>");
				            	}
				        	}
					%>
					
						<tr>
							<td>Total</td>
							<td><%= totalItems %></td>
							<td><%= totalAmount %></td>
						</tr>
					</table>
	    		</div>
	   		</div>
	    
			<div class="d-flex justify-content-center">
				<a href="post.jsp"><input type='button' class='btn btn-success' value='Proceed to Checkout'></a>
			</div>
	    	
	    	<% } %>
		</div>
		<%@ include file="footer.jsp" %>
	</body>
</html>