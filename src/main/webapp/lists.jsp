<%@ page language="java" contentType="text/html; charset=UTF-8"
pageEncoding="UTF-8" %> <%@ taglib prefix="s" uri="/struts-tags" %> <%@ taglib
prefix="sx" uri="/struts-dojo-tags" %>
<!DOCTYPE html>
<html>
  <head>
    <sx:head />
  </head>
  <body>
    <s:form action="displayUser">
      <sx:autocompleter
        label="Choose your record"
        list="listOfFirstNames"
        name="nameInput"
      />
      <s:submit />
    </s:form>

    <h3>All User Records:</h3>

    <s:iterator value="accounts">
      <fieldset>
        <s:property value="firstName" /><br />
        <s:property value="lastName" /><br /> <s:property value="age" /><br />
      </fieldset>
    </s:iterator>
    <p><a href="<s:url action='index' />">Return to home page</a>.</p>
  </body>
</html>
