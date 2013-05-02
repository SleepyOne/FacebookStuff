
<%@ page import="facebook.User" %>
<%@ page import="facebook.WallPost" %>
<%@ page import="facebook.Wall" %>
<%@ page import="facebook.Profile" %>
<%@ page import="facebook.Repository" %>


<%
  String postTarget = "profile";
  String text = request.getParameter("post");
  User author = (User) session.getAttribute("user");

  User wallPostReceiver = (User) session.getAttribute("userBeingViewed");

  if (text == null || text == "")
  {
    session.setAttribute("error", "Please enter text if you wish to make a wall post.");
%>
    <jsp:forward page="profile2.jsp" />
<%
  }
  else
  {
    int ID = WallPost.getNumPosts();
    ID++;
    String ident = Integer.toString(ID);

    WallPost post = new WallPost(author, text, ident, postTarget);

    wallPostReceiver.getProfile().getWall().addWallPost(post);
  }
%>

<jsp:forward page="profile2.jsp" />
