<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1" import="java.sql.SQLException, java.sql.ResultSet, java.sql.Statement, java.sql.DriverManager, java.sql.Connection"%>
    

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>

<%

String url = "jdbc:mysql://localhost:3306/appuserdb";
String userName = "root";
String password = "Favour";

try {
    Connection con = DriverManager.getConnection(url, userName, password);
    String sql = "SELECT * FROM bio_data";
    Statement statement = con.createStatement();
    ResultSet result = statement.executeQuery(sql);

    int count = 0;
    
    
    while (result.next()){
        String firstName = result.getString("first_name");
        String lastName = result.getString("last_name");
        count++;
        out.println("User " + count + ": " + firstName + " " + lastName);
        
    }
    con.close();
} catch (SQLException e) {
    System.out.println("Oops, error");
    e.printStackTrace();
}


%>

</body>
</html>