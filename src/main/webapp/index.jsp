<!DOCTYPE html>
<%@ page language="java" contentType="text/html; charset=UTF-8"
pageEncoding="UTF-8" %> <%@ taglib prefix="s" uri="/struts-tags" %>
<html>
  <head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
    <title>Basic Struts 2 Application - Welcome</title>
  </head>
  <body>
    
    <s:include value="./common/header.jsp" />
    <h1>Struts 2 - Connecting to Database</h1>
    <s:form action="login">
      <s:textfield name="username" label="Username" />
      <s:textfield name="password" label="Password" />
      <s:submit/>
    </s:form>

    <p><a href="register.jsp">Register a user here.</a></p>
    <p><a href="<s:url action='list'/>">Display user list</a></p>
  </body>
</html>

