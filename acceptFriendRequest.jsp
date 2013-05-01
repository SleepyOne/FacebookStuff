
<%@ page import="facebook.User" %>
<%@ page import="facebook.Repository" %>


<%
  String email = request.getParameter("email");

  User curUser = (User) session.getAttribute("user");
  User newFriend = Repository.instance().getUser(email);

  curUser.addFriend(newFriend);
  newFriend.addFriend(curUser);

  curUser.getProfile().removeFriendRequest(newFriend);

  out.println(email);
%>

<jsp:forward page="friendRequests.jsp" />
