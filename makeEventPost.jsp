
<%@ page import="facebook.User" %>
<%@ page import="facebook.WallPost" %>
<%@ page import="facebook.Wall" %>
<%@ page import="facebook.Repository" %>
<%@ page import="facebook.Event" %>


<%
  String text = request.getParameter("post");
  String postTarget = "event";
  User author = (User) session.getAttribute("user");

  Event wallPostReceiver = (Event) session.getAttribute("event");

  if (text == null || text == "")
  {
    session.setAttribute("error", "Please enter text if you wish to make a wall post.");
%>
    <jsp:forward page="event.jsp" />
<%
  }
  else
  {
    int ID = WallPost.getNumPosts();
    ID++;
    String ident = Integer.toString(ID);

    WallPost post = new WallPost(author, text, ident, postTarget);

    wallPostReceiver.getWall().addWallPost(post);
  }
%>

<jsp:forward page="event.jsp" />
