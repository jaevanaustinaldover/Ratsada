<%@ page import="java.sql.*" %>
<%@ page import="java.io.*" %>	
<%

    String server = "localhost";
    String database = "Ratsada";
    String userName = "11416088";
    String password = "warcraft3";
    
    Class.forName("com.microsoft.sqlserver.jdbc.SQLServerDriver");
    String connectionUrl = "jdbc:sqlserver://"+server+";databaseName="+database+";";
    Connection con = DriverManager.getConnection(connectionUrl, userName, password);
%>