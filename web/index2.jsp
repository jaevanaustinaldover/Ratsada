<html>
<head><title>Enter to database</title></head>
<body>
<table>
<%@ page import="java.sql.*" %>
<%@ page import="java.io.*" %>
<% 

    String server = "localhost";
    String database = "Ratsada";
    String userName = "sa";
    String password = "benilde";
    
    Class.forName("com.microsoft.sqlserver.jdbc.SQLServerDriver");
    String connectionUrl = "jdbc:sqlserver://"+server+":50894;databaseName="+database+";";
    Connection conn = DriverManager.getConnection(connectionUrl, userName, password);

    String sql = "SELECT * FROM Products";
    Statement stmt = conn.createStatement();
    ResultSet rs = stmt.executeQuery(sql);
    
    while(rs.next())
    {
 %>
        <tr>
        <td><%=rs.getString("ProductID") %></td>
        <td><%=rs.getString("ProductName") %></td>
        </tr>
<% 
     }

    rs.close();
    stmt.close();
    conn.close();
%>
</body>
</html>