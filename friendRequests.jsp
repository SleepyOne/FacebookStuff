
<%@ page import="facebook.User" %>
<%@ page import="java.util.ArrayList" %>


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
%>

<center>

<%
  out.println("<h1>Friend Requests</h1><br/><br/>");

  ArrayList<User> requests = curUser.getProfile().getFriendRequests();
  int numRequests = 0;

  for (int i = 0; i < requests.size(); i++)
  {
    out.println("<font size=5><a href='viewProfileController.jsp?email=" + requests.get(i).getEmail() + "'>" + requests.get(i).getUserName() + "</a></font><br/><br/>");

    out.println("<a href='acceptFriendRequest.jsp?email=" + requests.get(i).getEmail() + "'>");

    out.println("<img src='http://www.sirnigelgresley.org.uk/joinonline/pics/accept.png' width=24 height=24 alt='Reject' />");

    out.println("</a>");

    out.println("<a href='rejectFriendRequest.jsp?email=" + requests.get(i).getEmail() + "'>");

    out.println("<img src='http://www.sirnigelgresley.org.uk/joinonline/pics/reject.png' width=24 height=24 alt='Reject' />");

    out.println("</a><br/>");



    numRequests++;
  }

  if (numRequests == 0)
  {
    out.println("<center>You have no friend requests at this time.</center>");
  }

%>


