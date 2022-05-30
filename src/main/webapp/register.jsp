<%@ taglib prefix="s" uri="/struts-tags" %>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
  <head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
    <title>Register</title>
  </head>
  <body>
    <h3>Register for a prize by completing this form.</h3>

    <s:form action="register">
      <s:textfield name="accountBean.firstName" label="First name" />
      <s:textfield name="accountBean.lastName" label="Last name" />
      <s:textfield name="accountBean.age"  label="Age"  />
      <s:textfield name="accountBean.email"  label ="Email"/>
      <s:textfield name="accountBean.password"  label ="Password"/>
      <s:select name="accountBean.userType" label="Select user type:"
        list="#{'1':'Reader', '2':'Author'}" 
        value="2" />
      <s:submit/>
    </s:form>
  </body>
</html>