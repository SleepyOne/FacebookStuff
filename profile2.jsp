
<%@ page import="facebook.User" %>
<%@ page import="java.util.ArrayList" %>
<%@ page import="facebook.Profile" %>
<%@ page import="facebook.Wall" %>
<%@ page import="facebook.WallPost" %>
<%@ page import="facebook.Group" %>
<%@ page import="java.util.Collections" %>



<html>
<body>

<%
  User curUser = (User) session.getAttribute("user");
  User beingViewed = (User) session.getAttribute("userBeingViewed");
  if (curUser != null)
  {
    if (beingViewed != null)
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

  out.println("<h1><center>" + beingViewed.getUserName() + "</h1></center>");
%>

<img src="<%= beingViewed.getProfile().getPicture() %>" width=200 />

<br/>
<br/>

<%
  if (curUser.getFriends().contains(beingViewed))
  {
%>
    <form action="removeFriend.jsp" method=get>

      <input type=submit name=submit value="Remove Friend" />

    </form>
<%
  }
  if (beingViewed.getProfile().getFriendRequests().contains(curUser))
  {
    out.println("<font size=4>Friend request pending...</font><br/><br/>");
  }

  if (curUser.getProfile().getFriendRequests().contains(beingViewed))
  {
%>
    <form action="friendRequests.jsp" method=get>

      <input type=submit name=submit value = "Respond to Request" />

    </form>
<%
  } 
  if (curUser.getFriends().contains(beingViewed) == false &&
    beingViewed.getProfile().getFriendRequests().contains(curUser) == false &&
    curUser.getProfile().getFriendRequests().contains(beingViewed) == false)
  {
%>
    <form action="addFriend.jsp" method=get>

      <input type=submit name=submit value="Add Friend" />

    </form>
<%
  }

  if (curUser.getFriends().contains(beingViewed))
  {
%>

<form action="makeProfile2Post.jsp" method=get>

  <input type=text size=75 name=post />
  <input type=submit name=submit value="Post" />

</form>

<%
  }
%>

<br/>
<br/>


<%
  out.println(beingViewed.getBirthday());
  out.println("<br/> Gender: " + beingViewed.getGender() + "<br/><br/>");

  if (curUser.getFriends().contains(beingViewed))
  {
    out.println("<b><font size=4>Wall Posts</font></b><br/><br/>");

    ArrayList<WallPost> posts = beingViewed.getProfile().getWall().getWallPosts();

    Collections.sort(posts);
    Collections.reverse(posts);

    int numPosts = (10 < posts.size() ? 10 : posts.size());

    for (int i = 0; i < numPosts; i++)
    {
      out.println("<a href='viewProfileController.jsp?email=" + posts.get(i).getAuthor().getEmail() + "'>" + posts.get(i).getAuthor().getUserName() + "</a><br/>");
      out.println(posts.get(i).getText() + "<br/>");
      out.println("   " + posts.get(i).getDate());

      if (posts.get(i).getAuthor() == curUser )
      {
        out.println("<a href='deleteProfile2Post.jsp?ID=" + posts.get(i).getID() + "'>");

        out.println("<img src='http://www.prideangel.com/media/images/button-delete.gif' width=14 height=14 alt='Delete' />");

        out.println("</a><br/><br/><br/>");
      }
      else
      {
        out.println("<br/><br/><br/>");
      }
    }  

    out.println("<b><font size=4> Friends: </font></b><br/>");

    ArrayList<User> friends = beingViewed.getFriends();

    for (int i = 0; i < friends.size(); i++)
    {
      out.println("<a href='viewProfileController.jsp?email=" + friends.get(i).getEmail() + "'>" + friends.get(i).getUserName() + "</a><br/>");
    }

    out.println("<br/><br/><font size=4><b>Groups:</b></font><br/>");

    ArrayList<Group> groups = beingViewed.getGroupsJoined();

    for (int i = 0; i < groups.size(); i++)
    {
      out.println("<a href='viewGroupController.jsp?name=" + groups.get(i).getName() + "'>" + groups.get(i).getName() + "</a><br/><br/>");
    }

    out.println("<br/><br/><b>Hobbies</b><br/>");

    ArrayList<String> hobbies = beingViewed.getProfile().getHobbies();

    for (int i = 0; i < hobbies.size(); i++)
    {
      out.println(hobbies.get(i) + "<br/>");
    }
  }
%>



