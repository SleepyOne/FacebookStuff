
<%@ page import="facebook.Event" %>
<%@ page import="java.util.ArrayList" %>
<%@ page import="facebook.User" %>

<%
  User curUser = (User) session.getAttribute("user");
  Event curEvent = (Event) session.getAttribute("event");
  if (curUser != null)
  {
    if (curEvent != null)
    {
%>
      <jsp:include page="menu2.jsp" />
<%  
    }
    else
    {
%>
      <jsp:forward page="home.jsp" />
<%
    }
  }
  else
  {
%>
    <jsp:forward page="login.jsp" />
<%
  }
%>

<html>
<body>

<%
  if (curUser.getEventsJoined() != null && curUser.getEventsJoined().contains(curEvent))
  {
%>
    <form action="leaveEvent.jsp" method=get>

      <input type=submit name=submit value="Leave Event" />

    </form>
<%
  }
  else
  {
%>
    <form action="attendEvent.jsp" method=get>

      <input type=submit name=submit value="Attend Event" />

    </form>
<%
  }

  out.println("<b>Guests:</b><br/>");
  ArrayList<User> guests = curEvent.getGuests();

  for (int i = 0; i < guests.size(); i++)
  {
    out.println("<a href='viewProfileController.jsp?email=" + guests.get(i).getEmail() +  "'>" + guests.get(i).getUserName() + "</a><br/>");
  }
%>

<br/>
<br/>

<center>
<%
  out.println("<h1>" + curEvent.getName() + "</h1>");

  out.println("<font size=4>" + curEvent.getDescription() + "</font><br/><br/>");

  out.println("<font size=4>" + curEvent.getDate() + " at " + curEvent.getTime()    + "</font>");

%>

</body>
</html>



