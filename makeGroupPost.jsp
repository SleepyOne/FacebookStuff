
<%@ page import="facebook.User" %>
<%@ page import="facebook.WallPost" %>
<%@ page import="facebook.Wall" %>
<%@ page import="facebook.Repository" %>
<%@ page import="facebook.Group" %>


<%
  String postTarget = "group";
  String text = request.getParameter("post");
  User author = (User) session.getAttribute("user");

  Group wallPostReceiver = (Group) session.getAttribute("group");

  if (text == null || text == "")
  {
    session.setAttribute("error", "Please enter text if you wish to make a wall post.");
%>
    <jsp:forward page="group.jsp" />
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

<jsp:forward page="group.jsp" />
