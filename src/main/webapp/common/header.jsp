<%@ page contentType = "text/html; charset = UTF-8" %> <%@ taglib prefix = "s"
uri = "/struts-tags" %>
<style>
  * {
    padding: 0;
    margin: 0;
    box-sizing: border-box;
    font-family: "Poppins", "Lucida Sans Regular", "Lucida Grande",
      "Lucida Sans Unicode", Geneva, Verdana, sans-serif;
  }
  /* HEADER STYLES */
  header {
    background: rgb(180, 121, 180);
    color: white;
    height: 100px;
  }
  nav {
    display: inline;
    float: right;
    text-align: center;
    padding: 30px;
    text-decoration: none;
  }
  .nav-list {
    display: flex;
    align-items: center;
    margin-right: 20px;
  }
  .links {
    text-decoration: none;
    color: white;
    font-size: 1rem;
    padding: 0 20px;
  }
  .links:hover {
    opacity: 0.6;
    border-bottom: 2px solid white;
  }
  .signin {
    border: 1px solid white;
    border-radius: 1rem;
    font-weight: 500;
    transition: 0.3s ease ease-in-out;
    text-transform: uppercase;
    padding: 10px 20px;
  }
  .signin:hover {
    color: black;
    background: rgba(255, 255, 255, 0.692);
  }
</style>
<header>
  <nav>
    <ul class="nav-list">
      <li class="nav-list">
        <s:url var="Signin" />
        <s:a href="%{Signin}" class="links">Sign Up</s:a>
      </li>
      <li class="nav-list">
        <s:url var="Signup" />
        <s:a href="%{Signup}" class="links signin">Log In</s:a>
      </li>
    </ul>
  </nav>
</header>
