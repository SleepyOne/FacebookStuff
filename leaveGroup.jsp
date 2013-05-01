
<%@ page import="facebook.User" %>
<%@ page import="facebook.Group" %>


<%
  User curUser = (User) session.getAttribute("user");
  Group groupToRemove = (Group) session.getAttribute("group");

  curUser.removeGroup(groupToRemove);
  groupToRemove.removeMember(curUser);
%>

<jsp:forward page="group.jsp" />
