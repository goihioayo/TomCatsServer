<%@pagei language="java" contentType="text/html" pageEncoding="UTF-8"%>
<%include file="login.jsp"%>
<%
    String username= request.getParameter("username");
    String password= request.getParameter("password");

    Class.forName("com.mysql.jdbc.Driver");
    String url="jdbc:mysql://localhost:2048/dbName?user=root&password=acc";
    Connection conn= DriverManager.getConnection(url);
    Statement stmt=conn.creatStatement();
    String sql="SELECT * FROM memeber WHERE username='"+username+"' and password='"+password+"'";
    ResultSet rs=stmt.executeQuery(sql);
    boolean isCheck=false;
    if(rs.next())
        isCheck = true;

%>
