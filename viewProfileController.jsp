
<%@ page import="facebook.User" %>
<%@ page import="facebook.Repository" %>


<%
  String email = request.getParameter("email");

  User curUser = (User) session.getAttribute("user");
  User userToView = Repository.instance().getUser(email);

  session.setAttribute("userBeingViewed", userToView);

  if (curUser == userToView)
  {
%>
    <jsp:forward page="profile.jsp" />
<%
  }
  else
  {
%>
    <jsp:forward page="profile2.jsp" />
<%
  }
%>
