
<%@ page import="facebook.User" %>
<%@ page import="java.util.ArrayList" %>
<%@ page import="facebook.Event" %>


<html>
<body>

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

<center>

<br/>
<br/>

<div align = center> <a href= "createEvent.jsp">Create Event</a>

<br/>
<br/>

<div align = center> <a href= "createGroup.jsp">Create Group</a>

<br/>
<br/>

<form action="searchNames.jsp" method=get>

  <input type=text size=20 name=name />
  <input type=submit name=submit value="Search" />

</form>

<br/>
<br/>
</center>

<%
  ArrayList<Event> events = curUser.getEventsJoined();

  out.println("<font size=4><b>Events:</b></font><br/>");

  for (int i = 0; i < events.size(); i++)
  {
    out.println("<a href='viewEventController.jsp?ID=" + events.get(i).getID() + "'>" + events.get(i).getName() + "</a><br/><br/><br/>");
  }
%>



