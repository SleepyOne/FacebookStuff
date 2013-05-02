
<%@ page import="facebook.Event" %>
<%@ page import="java.util.ArrayList" %>
<%@ page import="facebook.User" %>
<%@ page import="facebook.WallPost" %>
<%@ page import="facebook.Wall" %>
<%@ page import="java.util.Collections" %>


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

  out.println("<font size=4>" + curEvent.getDate() + " at " + curEvent.getTime()    + "</font><br/><br/><br/>");

  session.setAttribute("wallPostReceiver", curEvent);
%>

<form action="makeEventPost.jsp" method=get>

  <input type=text size=75 name=post />
  <input type=submit name=submit value="Post" />

</form>


<%
  out.println("<b><font size=4>Wall Posts</font></b><br/><br/>");
  ArrayList<WallPost> posts = curEvent.getWall().getWallPosts();

  Collections.sort(posts);
  Collections.reverse(posts);

  int numPosts = (10 < posts.size() ? 10 : posts.size());

  for (int i = 0; i < numPosts; i++)
  {
    out.println("<a href='viewProfileController.jsp?email=" + posts.get(i).getAuthor().getEmail() + "'>" + posts.get(i).getAuthor().getUserName() + "</a><br/>");
    out.println(posts.get(i).getText() + "<br/>");
    out.println("   " + posts.get(i).getDate());

    if (posts.get(i).getAuthor() == curUser)
    {
      out.println("<a href='deleteEventPost.jsp?ID=" + posts.get(i).getID() + "'>");

      out.println("<img src='http://www.prideangel.com/media/images/button-delete.gif' width=14 height=14 alt='Delete' />");

      out.println("</a><br/><br/><br/>");
    }
  }
%>

</body>
</html>

