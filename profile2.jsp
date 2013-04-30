
<%@ page import="facebook.User" %>
<%@ page import="java.util.ArrayList" %>
<%@ page import="facebook.Profile" %>
<%@ page import="facebook.Wall" %>
<%@ page import="facebook.WallPost" %>


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

  // code to get the name of the person whose profile you're viewing

  User beingViewed;

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
  else
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
  out.println("<b>Hobbies</b><br/>");

  ArrayList<String> hobbies = beingView.getProfile().getHobbies();

  for (int i = 0; i < hobbies.size(); i++
  {
    out.println(hobbies.get(i) + "<br/>");
%>














