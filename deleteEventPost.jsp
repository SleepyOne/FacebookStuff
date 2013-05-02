
<%@ page import="facebook.Event" %>
<%@ page import="facebook.WallPost" %>
<%@ page import="facebook.Wall" %>
<%@ page import="java.util.ArrayList" %>


<%
  Event wallOwner = (Event) session.getAttribute("event");

  String ID = request.getParameter("ID");

  Wall postLoser = wallOwner.getWall();

  ArrayList<WallPost> posts = postLoser.getWallPosts();

  for (int i = 0; i < posts.size(); i++)
  {
    if (posts.get(i).getID() == ID)
    {
      WallPost post = posts.get(i);
      postLoser.removeWallPost(post);
      break;
    }
  }
%>

<jsp:forward page="event.jsp" />

