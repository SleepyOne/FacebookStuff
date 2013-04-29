<%@ page import="facebook.User" %>
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

  ArrayList friends = curUser.getFriends();

  for (int i = 0; i < friends.size(); i++)
  {
    out.println(friends.get(i).getUsername());
  }

%>

