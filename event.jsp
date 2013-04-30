
<%@ page import="facebook.Event" %>
<%@ page import="java.util.ArrayList" %>

<%
  User curUser = (User) session.getAttibute("user");
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
  if (curUser.getEventsJoined().contains(curEvent))
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



