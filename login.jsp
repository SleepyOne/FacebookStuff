<jsp:include page="menu.jsp" />

<html>
<body>

<br/>

<h1>Login</h1>

<center>
<form action="loginController.jsp" method=post>

  Email: <input type=text size=20 name=email />
  <br/>
  Password: <input type=password size=20 name=password />
  <br/>
  <input type=submit value="Login" />

</form>
</center>
<br/>
<br/>

<%
  String error = (String) session.getAttribute("error");

  if (error != null)
  {
    out.println("<center>" + error + "</center>");
  }

  session.removeAttribute("error");
%>

</body>
</html>
