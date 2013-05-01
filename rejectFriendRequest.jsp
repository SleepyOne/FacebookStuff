
<%@ page import="facebook.User" %>
<%@ page import="facebook.Repository" %>


<%
  String email = request.getParameter("email");

  User curUser = (User) session.getAttribute("user");
  User rejectedFriend = Repository.instance().getUser(email);

  curUser.getProfile().removeFriendRequest(rejectedFriend);
%>

<jsp:forward page="friendRequests.jsp" />
