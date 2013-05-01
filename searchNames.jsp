
<%@ page import="facebook.User" %>
<%@ page import="facebook.Repository" %>
<%@ page import="java.util.ArrayList" %>


<html>
<body>
<center>

<%
  User curUser = (User) session.getAttribute("user");
  if (curUser != null)
  {
%>
    <jsp:include page="menu2.jsp" />
<%
  }
  else
  {
%>
    <jsp:forward page="login.jsp" />
<%
  }
%>

<h1>Search Results</h1>

<br/>
<br/>
<br/>

<%
  String name = request.getParameter("name");
  int numResults = 0;

  ArrayList<User> users = Repository.instance().getAllUsers();

  for (int i = 0; i < users.size(); i++)
  {
    if (name.equalsIgnoreCase(users.get(i).getUserName()))
    {
      out.println("<a href='viewProfileController.jsp?email=" + users.get(i).getEmail() + "'>" + users.get(i).getUserName() + "</a><br/>");
      numResults++;
    }
  }

  if (numResults == 0)
  {
    out.println("Sorry, no matches found!");
  }

%>

</html>
</body>
</center>



