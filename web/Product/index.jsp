<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<%@ include file="/WEB-INF/sql.jsp" %>
<%
	if(request.getParameter("ProductID")==null)
	{
		response.sendRedirect(request.getContextPath());
		String ProductID = "1";
	}
	else
	{
		String ProductID = request.getParameter("ProductID");
	}
	String sql = "SELECT * FROM Products a" +
	" LEFT JOIN Category b ON a.CategoryID=b.CategoryID" +
	" LEFT JOIN Status c ON a.ProductStatus=c.StatusID" +
	" WHERE a.ProductID='" + ProductID + "'";
	Statement stmt = con.createStatement();
	ResultSet rs = stmt.executeQuery(sql);
	
    while(rs.next())
    {
    	float Stocks = Float.parseFloat(rs.getString("Stocks"));
    	String Specs = rs.getString("Specs");
    	String ProductInclusions = rs.getString("ProductInclusions");
    	String Warranty = rs.getString("Warranty");
%>
<html>
<head>
    <title>Ratsada! | <%=rs.getString("ProductName") %></title>
    <jsp:include page="/head.jsp" />
</head>
<body>

<jsp:include page="/WEB-INF/header.jsp" />
	<div id="ViewProduct">
		<div class="container">
			<div class="row">
				<div class="col-md-12">
				<p class="ViewProduct" style="text-transform:uppercase">
				<b>YOU ARE HERE:</b> <a href="<%=request.getContextPath()%>" class="ViewProduct1">RATSADA!</a> > <a href="<%=request.getContextPath()%>/<%=rs.getString("CategoryName") %>" class="ViewProduct1"><%=rs.getString("CategoryName") %></a> > <%=rs.getString("ProductName") %>
				</p>
				</div>
			</div>
			<br><br>
			<div class="row">
				<div class="col-md-4">
				<img src="<%=request.getContextPath()%>/images/products/<%=rs.getString("ProductID") %>.jpg" onContextMenu="return false" style="width:400px; height:400px; border: 1px solid #e8e8e8; border-radius: 20px; padding: 20px; padding-bottom: 50px">
				</div>
				<div class="col-md-8">
				<p class="ViewProduct2"><%=rs.getString("ProductName") %></p>
				<p class="ViewProduct3">&#8369 <%= (String.format("%,.2f",rs.getFloat("Price"))) %></p>
				<br><br>
					<%
			    	if (Stocks == 0)
			    	{
					%>
						<p class="Stock3">NOT AVAILABLE</p>
					<%
			    	}
			    	else if (Stocks == 1)
			    	{
					%>
						<p class="Stock2">LAST REMAINING STOCK AVAILABLE</p>
					<%
			    	}
			    	else
			    	{
					%>
						<p class="Stock1">IN STOCK</p>
					<%}%>
				<br><br>
				<a href="<%=request.getContextPath()%>/Cart/?ProductID=<%=rs.getString("ProductID") %>" ID="AddToCart"><p class="AddToCart">ADD TO CART</p></a>
				<br><br><br>
				
					<%
			    	if (Specs != null)
			    	{
					%>
						<p class="ViewProduct4">Specs:</p>
						<p class="ViewProduct5"><%=rs.getString("Specs") %></p>
						<br>
					<%}%>

					<%
			    	if (ProductInclusions != null)
			    	{
					%>
						<p class="ViewProduct4">Product Inclusion:</p>
						<p class="ViewProduct5"><%=rs.getString("ProductInclusions") %></p>
						<br>
					<%}%>
					
					<%
			    	if (Warranty != null)
			    	{
					%>
						<p class="ViewProduct4">Warranty:</p>
						<p class="ViewProduct5"><%=rs.getString("Warranty") %></p>
						<br>
					<%}%>
				</div>
			</div>
		</div>
	</div>
<% 
    }
    rs.close();
    stmt.close();
    con.close();
%>
<hr>
	<jsp:include page="/WEB-INF/footer.jsp" />
</body>
</html>