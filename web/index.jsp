<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1" isErrorPage="true" errorPage="/WEB-INF/error.jsp" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
    <title>Ratsada!</title>
    <jsp:include page="/head.jsp" />
</head>
<body>
<jsp:include page="/WEB-INF/header.jsp" />
<div id="front">
<div class="img-animation wow bounceInLeft" style="animation-name: bounceInLeft;
height: 500px;visibility: visible; position: relative;">
        <div class="animation-lg">
            <img src="/Ratsada/images/bg1.png" onContextMenu="return false">
            <img src="/Ratsada/images/bg1.png" onContextMenu="return false">
            <img src="/Ratsada/images/bg1.png" onContextMenu="return false">
            <img src="/Ratsada/images/bg1.png" onContextMenu="return false">
            <img src="/Ratsada/images/bg1.png" onContextMenu="return false">
            <img src="/Ratsada/images/bg1.png" onContextMenu="return false">
            <img src="/Ratsada/images/bg1.png" onContextMenu="return false">
            <img src="/Ratsada/images/bg1.png" onContextMenu="return false">
            <img src="/Ratsada/images/bg1.png" onContextMenu="return false">
            <img src="/Ratsada/images/bg1.png" onContextMenu="return false">
            <img src="/Ratsada/images/bg1.png" onContextMenu="return false">
            <img src="/Ratsada/images/bg1.png" onContextMenu="return false">
        </div>
        <div class="animation2-lg" style="position:absolute; bottom: 0;">
            <img src="/Ratsada/images/bg3.png" onContextMenu="return false">
            <img src="/Ratsada/images/bg3.png" onContextMenu="return false">
            <img src="/Ratsada/images/bg3.png" onContextMenu="return false">
            <img src="/Ratsada/images/bg3.png" onContextMenu="return false">
            <img src="/Ratsada/images/bg3.png" onContextMenu="return false">
            <img src="/Ratsada/images/bg3.png" onContextMenu="return false">
            <img src="/Ratsada/images/bg3.png" onContextMenu="return false">
            <img src="/Ratsada/images/bg3.png" onContextMenu="return false">
            <img src="/Ratsada/images/bg3.png" onContextMenu="return false">
            <img src="/Ratsada/images/bg3.png" onContextMenu="return false">
            <img src="/Ratsada/images/bg3.png" onContextMenu="return false">
            <img src="/Ratsada/images/bg3.png" onContextMenu="return false">
        </div>        
        <div class="animation1-lg" style="position:absolute; bottom: 0;">
            <img src="/Ratsada/images/bg2.png" onContextMenu="return false">
            <img src="/Ratsada/images/bg2.png" onContextMenu="return false">
            <img src="/Ratsada/images/bg2.png" onContextMenu="return false">
            <img src="/Ratsada/images/bg2.png" onContextMenu="return false">
            <img src="/Ratsada/images/bg2.png" onContextMenu="return false">
            <img src="/Ratsada/images/bg2.png" onContextMenu="return false">
            <img src="/Ratsada/images/bg2.png" onContextMenu="return false">
            <img src="/Ratsada/images/bg2.png" onContextMenu="return false">
            <img src="/Ratsada/images/bg2.png" onContextMenu="return false">
            <img src="/Ratsada/images/bg2.png" onContextMenu="return false">
            <img src="/Ratsada/images/bg2.png" onContextMenu="return false">
            <img src="/Ratsada/images/bg2.png" onContextMenu="return false">
        </div>
    </div>
</div>
<div style="margin-top: -500px; height: 500px; z-index:5; padding: 0px; overflow-y: auto;">
		<div class="container">
			<div class="row">
				<div class="col-md-12 wow bounceInLeft" align="center">
					<p class="home">Check out our latest deals!</p>
					<br><br>
				</div>
			</div>
			<div class="row">
			<div class="col-md-12 wow bounceInRight" data-wow-delay="0.5s">

<%@ include file="/WEB-INF/sql.jsp" %>		
<% 
	String sql = "SELECT TOP 4 * FROM Products a INNER JOIN Status b ON a.ProductStatus=b.StatusID" +
			" WHERE (b.StatusName='SALE' AND a.Status = 1) AND Stocks != 0 order by newid();";
	Statement stmt = con.createStatement();
	ResultSet rs = stmt.executeQuery(sql);
	
    while(rs.next())
    {
%>
			<div id="product">
			
					<a href="<%=request.getContextPath()%>/Product/?ProductID=<%=rs.getString("ProductID") %>">
					<div id="productbox">
						<img src="<%=request.getContextPath()%>/images/products/<%=rs.getString("ProductID") %>.jpg" onContextMenu="return false" style="width:200px; height:200px;">
						<br><br>
						<p class="Product"><%=rs.getString("ProductName") %></p>
						<p class="ProductPrice">&#8369 <%= (String.format("%,.2f",rs.getFloat("Price"))) %></p>
						<a href="<%=request.getContextPath()%>/Cart/?ProductID=<%=rs.getString("ProductID") %>"><div id="ProductCart1" align="center"><div id="ProductCart"><img src="<%=request.getContextPath()%>/images/cart.png" onContextMenu="return false"></div></div></a>
			
			<div align="right" id="ProductStatus">
			<div align="center" id="<%=rs.getString("StatusName") %>"><p class="ProductStatus"><%=rs.getString("StatusName") %></p></div>
			</div>
					</div>
			</div>
<% 
     }

    rs.close();
    stmt.close();
%>
			</div>
			</div>
		</div>
</div>
	<div id="trending">
		<div class="container">
			<div class="row">
				<div class="col-md-12 wow bounceInLeft">
					<p class="header">Trending Now</p>
				</div>
			</div>
		</div>
	</div>
	
	<div id="trending_products">
		<div class="container">
			<div class="row">
				<div class="col-md-12 wow bounceInRight" data-wow-delay="0.5s">
					
<% 
	String sql1 = "SELECT TOP 8 * FROM Products a INNER JOIN Status b ON a.ProductStatus=b.StatusID" +
		" WHERE (b.StatusName='HOT' AND a.Status = 1) AND Stocks != 0 order by newid();";
	Statement stmt1 = con.createStatement();
	ResultSet rs1 = stmt1.executeQuery(sql1);
	
    while(rs1.next())
    {
%>
			<div id="product">
					<a href="<%=request.getContextPath()%>/Product/?ProductID=<%=rs1.getString("ProductID") %>">
					<div id="productbox">
						<img src="<%=request.getContextPath()%>/images/products/<%=rs1.getString("ProductID") %>.jpg" onContextMenu="return false" style="width:200px; height:200px;">
						<br><br>
						<p class="Product"><%=rs1.getString("ProductName") %></p>
						<p class="ProductPrice">&#8369 <%= (String.format("%,.2f",rs1.getFloat("Price"))) %></p>
						<a href="<%=request.getContextPath()%>/Cart/?ProductID=<%=rs1.getString("ProductID") %>"><div id="ProductCart1" align="center"><div id="ProductCart"><img src="<%=request.getContextPath()%>/images/cart.png" onContextMenu="return false"></div></div></a>
					
					
						<div align="right" id="ProductStatus">
						<div align="center" id="<%=rs1.getString("StatusName") %>"><p class="ProductStatus"><%=rs1.getString("StatusName") %></p></div>
			</div>
			</div>
			</div>
<% 
     }

    rs1.close();
    stmt1.close();
%>
					

					
					</div>
					</div>
			</div>
			</div>
	<div id="howtoorder" style="padding-top: 70px; padding-bottom: 70px;">
		<div class="container">
			<div class="row">
				<div class="col-md-12 wow bounceInUp">
					<p class="header">How to Order?</p><br>
				</div>
			</div>
			<div class="row">
				<div class="col-md-4 wow bounceInDown" data-wow-delay="0.5s">
				<br><br>
				<div style="border: 2px solid white; border-radius: 50%; width: 30px; height: 30px; text-align: center;"><p class="home1"><b>1</b></p></div>
				<div align="center">
<img src="<%=request.getContextPath()%>/images/home1.png" onContextMenu="return false" style="border: 2px solid white; border-radius: 50%">
<br>
				<p class="home1">Click the "Add to Cart" icon on the gadget to place your order.</p>
				</div></div>
				<div class="col-md-4 wow bounceInDown" data-wow-delay="1.0s">
				<br><br>
<div style="border: 2px solid white; border-radius: 50%; width: 30px; height: 30px; text-align: center;"><p class="home1"><b>2</b></p></div>
				<div align="center">
<img src="<%=request.getContextPath()%>/images/home2.png" onContextMenu="return false" style="border: 2px solid white; border-radius: 50%">
<br>
				<p class="home1">Click "Checkout" to order the gadgets you have placed.</p>
				</div></div>
				<div class="col-md-4 wow bounceInDown" data-wow-delay="1.5s">
				<br><br>
<div style="border: 2px solid white; border-radius: 50%; width: 30px; height: 30px; text-align: center;"><p class="home1"><b>3</b></p></div>
				<div align="center">
<img src="<%=request.getContextPath()%>/images/home3.png" onContextMenu="return false" style="border: 2px solid white; border-radius: 50%">
<br>
				<p class="home1">Print your delivery receipt and wait for the delivery of your gadgets.</p>
				</div></div>
			</div>
		</div>
	</div>
	<jsp:include page="/WEB-INF/footer.jsp" />
	<% con.close(); %>
</body>
</html>