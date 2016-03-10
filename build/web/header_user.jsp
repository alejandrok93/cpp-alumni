<%-- 
    Document   : header_user
    Created on : Mar 8, 2016, 10:49:55 PM
    Author     : James
--%>

<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/sql" prefix="sql" %> 


  <sql:setDataSource
        var="myDS"
        driver="com.mysql.jdbc.Driver"
        url="jdbc:mysql://localhost:3306/cpp-alumni"
        user="alejandro" password="Test123"
    />
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%-- 
Need classes to import a DB request, then need to pull up the USER info
<%@page import="Thing importing" %>
--%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
            <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/css/bootstrap.min.css">
       <style>
            .container {
                margin: 10%;
                padding: 10%
            }
            
             td {
    padding: 10px;
}

img {
    height: 10%;
    width: 10%;
}
            </style>
    
        <title>JSP Page</title>
    </head>
    <body>
       
        <div class="head">
                <a href="<%= request.getContextPath()%>/home.jsp">
                    
                    <image src="<%= request.getContextPath()%>/img/cpp_logo.png" style="float: left; padding-left: 5px; padding-top: 5px;"/></a>
                <br>
              
            
            </div>
                    <nav class="navbar navbar-default">
  <div class="container-fluid">
    <div class="navbar-header">
      <a class="navbar-brand" href="<%= request.getContextPath()%>/home.jsp">CPP Alumni Network</a>
    </div>
    <ul class="nav navbar-nav">
      <li><a href="home.jsp">Home</a></li>
      <li><a href="index.jsp">Logout</a></li>
      
      <li><a href="profile.jsp">Profile</a></li>
      <li><a href="#">Friends</a></li>
      <li>
    <form action="SearchServlet" method="POST">
        <input type="text" name="userEmail">
        <input type="submit" value="Search">
    </form></li>
    </ul>
  </div>
</nav>
        