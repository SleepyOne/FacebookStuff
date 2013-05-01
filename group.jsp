
<%@ page import="facebook.Group" %>
<%@ page import="facebook.User" %>
<%@ page import="java.util.ArrayList" %>


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
%>

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

  out.println(curGroup.getDescription());
%>

</body>
</html>


