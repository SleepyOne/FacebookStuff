<%@ page import="facebook.Group" %>

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

<center>
<%
  out.println("<h1>" + curGroup.getName() + "</h1>");
%>

<br/>
<br/>

<%
  if (curUser.getGroupsJoined().contains(curGroup))
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


