
<%@ page import="facebook.User" %>
<%@ page import="java.util.ArrayList" %>


<%
  User curUser = (User) session.getAttribute("user");
  User userToRemove = (User) session.getAttribute("userBeingViewed");

  curUser.getFriends().remove(userToRemove);
  userToRemove.getFriends().remove(curUser);
%>

<jsp:forward page="profile2.jsp" />
