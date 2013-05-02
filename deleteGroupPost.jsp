
<%@ page import="facebook.Group" %>
<%@ page import="facebook.WallPost" %>
<%@ page import="facebook.Wall" %>
<%@ page import="java.util.ArrayList" %>


<%
  Group wallOwner = (Group) session.getAttribute("group");

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

<jsp:forward page="group.jsp" />
