
<%@ page import="facebook.User" %>
<%@ page import="java.util.ArrayList" %>


<%
  User curUser = (User) session.getAttribute("user");
  User userToRequest = (User) session.getAttribute("userBeingViewed");

  userToRequest.getProfile().addFriendRequest(curUser);
%>

<jsp:forward page="profile2.jsp" />
