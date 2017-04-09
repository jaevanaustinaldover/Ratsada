<%@ page import="java.sql.*" %>
<%@ page import="java.io.*" %>	
<%

    String server = "localhost:50894";
    String database = "Ratsada";
    String userName = "sa";
    String password = "benilde";
    
    Class.forName("com.microsoft.sqlserver.jdbc.SQLServerDriver");
    String connectionUrl = "jdbc:sqlserver://"+server+";databaseName="+database+";";
    Connection con = DriverManager.getConnection(connectionUrl, userName, password);
%>