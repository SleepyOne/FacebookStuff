
<%@ page import="facebook.Group" %>
<%@ page import="facebook.User" %>
<%@ page import="java.util.ArrayList" %>
<%@ page import="facebook.WallPost" %>
<%@ page import="facebook.Wall" %>
<%@ page import="java.util.Collections" %>


<%
  User curUser = (User) session.getAttribute("user");
  Group curGroup = (Group) session.getAttribute("group");
  if (curUser != null)
  {
    if (curGroup != null)
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

<br/>

<%
  out.println("<font size=4><b>Members:</b></font><br/>");
  ArrayList<User> members = curGroup.getMembers();

  for (int i = 0; i < members.size(); i++)
  {
    out.println("<a href='viewProfileController.jsp?email=" + members.get(i).getEmail() + "'>" + members.get(i).getUserName() + "</a><br/>");
  }
%>


<center>
<%
  out.println("<h1>" + curGroup.getName() + "</h1>");
 
  out.println(curGroup.getDescription());

  session.setAttribute("wallPostReceiver", curGroup);
%>

<form action="makeGroupPost.jsp" method=get>

  <input type=text size=75 name=post />
  <input type=submit name=submit value="Post" />

</form>


<br/>
<br/>

<%
  if (curUser.getGroupsJoined() != null && curUser.getGroupsJoined().contains(curGroup))
  {
%>
    <form action="leaveGroup.jsp" method=get>

      <input type=submit name=submit value="Leave Group" />

    </form>
<%
  }
  else
  {
%>
    <form action="joinGroup.jsp" method=get>

      <input type=submit name=submit value="Join Group" />

    </form>

<br/>
<br/>

<%
  }

  out.println("<b><font size=4>Wall Posts</font></b><br/><br/>");
  ArrayList<WallPost> posts = curGroup.getWall().getWallPosts();

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
      out.println("<a href='deleteGroupPost.jsp?ID=" + posts.get(i).getID() + "'>");

      out.println("<img src='http://www.prideangel.com/media/images/button-delete.gif' width=14 height=14 alt='Delete' />");

      out.println("</a><br/><br/><br/>");
    }
  }

%>

</body>
</html>


