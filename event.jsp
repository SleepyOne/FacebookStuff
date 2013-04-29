<%@ page import="facebook.Event" %>

<%
  Event curEvent = (Event) session.getAttribute("event");
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
%>

<html>
<body>

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



