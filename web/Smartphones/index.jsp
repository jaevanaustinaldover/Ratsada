<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1" isErrorPage="true" errorPage="/WEB-INF/error.jsp" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
    <title>Ratsada! Smartphones</title>
    <jsp:include page="/head.jsp" />
</head>
<body>
<%
	if(request.getParameter("Products")==null)
	{
		response.sendRedirect(request.getContextPath() + "/Smartphones/?Products=ALL");
	}
%>
<jsp:include page="/WEB-INF/header.jsp" />
	<div id="Category1">
		<div class="container">
			<div class="row">
				<div class="col-md-3">
				</div>
				<div class="col-md-6 wow bounceInLeft" id="Category1a">
				<p class="header">
				Smartphones
				</p>
				</div>
				<div class="col-md-3" id="Category1a"></div>
			</div>
		</div>
	</div>
	<div id="Category2">
		<div class="container">
			<div class="row">
			<div class="col-md-3">
				<div id="FilterBox">
					<p class="FilterBy1">Brand:</p>
					<div id="FilterBox1">
					<a href="?Products=ALL"><div id="FilterBox2"><p class="FilterBy2">ALL</p></div></a>
<%@ include file="/WEB-INF/sql.jsp" %>
<% 

	String sql = "SELECT DISTINCT BrandName FROM Products a" +
		" INNER JOIN Brands b ON a.BrandID=b.BrandID" +
		" INNER JOIN Category c ON a.CategoryID=c.CategoryID" +
		" WHERE c.CategoryName='Smartphones'";
	Statement stmt = con.createStatement();
	ResultSet rs = stmt.executeQuery(sql);
	
    while(rs.next())
    {
%>
	<a href=""><div id="FilterBox2"><p class="FilterBy2"><%=rs.getString("BrandName") %></p></div></a>
<% 
     }

    rs.close();
    stmt.close();
%>
					</div>
					
					<br>
					<p class="FilterBy1">Price:</p>
					<div id="FilterBox1">
						<a href=""><div id="FilterBox2"><p class="FilterBy2">Lowest to Highest</p></div></a>
						<a href=""><div id="FilterBox2"><p class="FilterBy2">Highest to Lowest</p></div></a>
					</div>
					
					<br>
					<p class="FilterBy1">Status:</p>
					<div id="FilterBox1">
						<a href=""><div id="FilterBox2"><p class="FilterBy2">New Product</p></div></a>
						<a href=""><div id="FilterBox2"><p class="FilterBy2">Trending</p></div></a>
						<a href=""><div id="FilterBox2"><p class="FilterBy2">Sale</p></div></a>
					</div>
				</div>
			</div>
			<div class="col-md-9">
<% 
	if(request.getParameter("Products").equals("ALL"))
	{
			String sql1 = "SELECT * FROM Products a" +
			" LEFT JOIN Status b ON a.ProductStatus=b.StatusID" +
			" LEFT JOIN Category c ON a.CategoryID=c.CategoryID" +
			" WHERE (a.Status = 1 AND c.CategoryName = 'Smartphones') AND Stocks != 0";
			Statement stmt1 = con.createStatement();
			ResultSet rs1 = stmt1.executeQuery(sql1);

    while(rs1.next())
    {
    	String StatusName = rs1.getString("StatusName");

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
					<%
			    	if (StatusName == null)
			    	{
					%>
						<div align="center" id="HOT" style="visibility: hidden"><p class="ProductStatus">NONE</p></div>
					<%
			    	}
			    	else
			    	{
					%>
						<div align="center" id="<%=rs1.getString("StatusName") %>"><p class="ProductStatus"><%=rs1.getString("StatusName") %></p></div>
					<%}%>
			</div>
			</div>
			</div>
<% 
    }
    
    rs1.close();
    stmt1.close();
	}
%>
		</div>
		</div>
		</div>
	</div>
	<jsp:include page="/WEB-INF/footer.jsp" />
	<% con.close(); %>
</body>
</html>