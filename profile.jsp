
<%@ page import="facebook.User" %>
<%@ page import="java.util.ArrayList" %>


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

<form action="changeProfilePic.jsp" method=get>

  <input type=file name=picture />
  <input type=submit name=submit value="Submit" />

</form>

  <br/>
  <br/>


<form action="addFriend.jsp" method=get>

  <input type=submit name=addFriend value="Add Friend" />

</form>


<%
  out.println(curUser.getBirthday());
  out.println("<br/> Gender: " + curUser.getGender());
%>

  <br/>
  <br/>

  Hobbies:
<%
  ArrayList<String> hobbies = curUser.getProfile().getHobbies();

  for (int i = 0; i < hobbies.size(); i++)
  {
    out.println(hobbies.get(i));
  }
%>






