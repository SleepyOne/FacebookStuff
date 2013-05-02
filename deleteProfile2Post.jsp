
<%@ page import="facebook.Profile" %>
<%@ page import="facebook.User" %>
<%@ page import="facebook.WallPost" %>
<%@ page import="facebook.Wall" %>
<%@ page import="java.util.ArrayList" %>


<%
  User profileOwner = (User) session.getAttribute("beingViewed");
  Profile wallOwner = profileOwner.getProfile();

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

<jsp:forward page="profile2.jsp" />


