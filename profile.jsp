
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
  if (curUser != null)
  {
%>
    <jsp:include page="menu2.jsp" />
<%
  }
  else
  {
%>
    <jsp:forward page="login.jsp" />
<%
  }

  out.println("<h1><center>" + curUser.getUserName() + "</center></h1>");
%>



<img src="<%= curUser.getProfile().getPicture() %>" width=200 />

<br/>
<br/>

<form action="changeProfilePic.jsp" method=get enctype="multipart/form-data">

  <input type=file name=picture />
  <input type=submit name=submit value="Submit" />

</form>

  <br/>
  <br/>

<form action="makePost.jsp" method=get>

  <input type=text size=75 name=post />
  <input type=submit name=submit value="Post" />

</form>


<%
  out.println(curUser.getBirthday());
  out.println("<br/> Gender: " + curUser.getGender() + "<br/><br/>");
  out.println("<b><font size=4> Friends: </font></b><br/>");

  ArrayList<User> friends = curUser.getFriends();

  for (int i = 0; i < friends.size(); i++)
  {
    out.println("<a href='viewProfileController.jsp?email=" + friends.get(i).getEmail() + "'>" + friends.get(i).getUserName() + "</a><br/>");
  }

  out.println("<br/><br/><font size=4><b>Groups:</b></font><br/>");

  ArrayList<Group> groups = curUser.getGroupsJoined();

  for (int i = 0; i < groups.size(); i++)
  {
    out.println("<a href='viewGroupController.jsp?name=" + groups.get(i).getName() + "'>" + groups.get(i).getName() + "</a><br/><br/>");
  }
%>

  <br/>
  <br/>

<b>Hobbies:</b>

<form action="addHobby.jsp" method=get />

  <input type=text size=20 name=hobby />
  <input type=submit name=submit value="Add Hobby" />

</form>

<%
  ArrayList<String> hobbies = curUser.getProfile().getHobbies();

  for (int i = 0; i < hobbies.size(); i++)
  {
    out.println(hobbies.get(i) + "<br/>");
  }
%>






