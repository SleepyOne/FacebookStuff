
<%@ page import="facebook.User" %>
<%@ page import="facebook.WallPost" %>
<%@ page import="facebook.Wall" %>
<%@ page import="facebook.Profile" %>


<%
  String postTarget = "profile";
  String text = request.getParameter("post");
  User author = (User) session.getAttribute("user");

  if (text == null || text == "")
  {
    session.setAttribute("error", "Please enter text if you wish to make a wall post.");
%>

    <jsp:forward page="profile.jsp" />
<%
  }
  else
  {
    int ID = WallPost.getNumPosts();
    ID++;
    String ident = Integer.toString(ID);

    WallPost post = new WallPost(author, text, ident, postTarget);

    author.getProfile().getWall().addWallPost(post);
  }
%>

<jsp:forward page="profile.jsp" />
