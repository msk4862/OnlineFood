<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Foodpanda</title>
        <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.1.3/css/bootstrap.min.css">
        <link rel="stylesheet" href="w3.css" type="text/css">
        <link rel="stylesheet" href="CSS/base.css" type="text/css">
    </head>
    <body>
    <%@ include file="header.jsp" %>  
    
    <div class="container mt-4">
    
    <h3>We offer following dishes...</h3>
    <table  class="w3-table">
        <tr>
            <td><img src="Images/pizzas/bigmess.png" style="width:100%" height=250 width=250></td>
            <td><img src="Images/pizzas/proscuito.png" style="width:100%" height=250 width=250></td>
            <td><img src="Images/pizzas/break.png" style="width:100%" height=250 width=250></td>
        </tr>
        <tr><td class="w3-xlarge">for the Veg.</td><td class="w3-xlarge"> Veg. Proscuito</td><td class="w3-xlarge">Break Pizza</td></tr>

        <tr>
            <td><img src="Images/pizzas/bureger.png" style="width:100%" height=250 width=250></td>
            <td><img src="Images/pizzas/cone.png" style="width:100%" height=250 width=250></td>
            <td><img src="Images/pizzas/eggs.png" style="width:100%" height=250 width=250></td>
        </tr>
        <tr><td class="w3-xlarge">Burger Pizza</td><td class="w3-xlarge">for the love of Cone</td><td class="w3-xlarge">Eggs special</td></tr>

        <tr>
            <td><img src="Images/pizzas/love.png" style="width:100%" height=250 width=250></td>
            <td><img src="Images/pizzas/mac.png" style="width:100%" height=250 width=250></td>
            <td><img src="Images/pizzas/ml.png" style="width:100%" height=250 width=250></td>
        </tr>
        <tr><td class="w3-xlarge">for the Love</td><td class="w3-xlarge">Mac pizza</td><td class="w3-xlarge">Sweet ML's</td></tr>

        <tr>
            <td><img src="Images/pizzas/packman.png" style="width:100%" height=250 width=250></td>
            <td><img src="Images/pizzas/bike.png" style="width:100%" height=250 width=250></td>
            <td><img src="Images/pizzas/rucola.png" style="width:100%" height=250 width=250></td>
        </tr>
        <tr><td class="w3-xlarge">Packman's</td><td class="w3-xlarge">The Bike Pizza</td><td class="w3-xlarge">best rated Rucola</td></tr>

        <tr>
            <td><img src="Images/pizzas/saus.png" style="width:100%" height=250 width=250></td>
            <td><img src="Images/pizzas/strips.png" style="width:100%" height=250 width=250></td>
            <td><img src="Images/pizzas/tiny.png" style="width:100%" height=250 width=250></td>
        </tr>
        <tr><td class="w3-xlarge">Saus favour</td><td class="w3-xlarge">Strips</td><td class="w3-xlarge">for the kids</td></tr>
    </table>
    </div>
    <%@ include file="footer.jsp" %>  
</body>
</html>


