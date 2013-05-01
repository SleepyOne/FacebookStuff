
<%@ page import="facebook.User" %>
<%@ page import="java.util.ArrayList" %>
<%@ page import="facebook.Profile" %>
<%@ page import="facebook.Wall" %>
<%@ page import="facebook.WallPost" %>
<%@ page import="facebook.Group" %>


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
%>


<form action="makePost.jsp" method=get>

  <input type=text size=75 name=post />
  <input type=submit name=submit value="Post" />

</form>

<br/>
<br/>


<%
  out.println(beingViewed.getBirthday());
  out.println("<br/> Gender: " + beingViewed.getGender() + "<br/><br/>");

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

  out.println("<b>Hobbies</b><br/>");

  ArrayList<String> hobbies = beingViewed.getProfile().getHobbies();

  for (int i = 0; i < hobbies.size(); i++)
  {
    out.println(hobbies.get(i) + "<br/>");
  }
%>



