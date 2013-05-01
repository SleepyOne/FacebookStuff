
<%@ page import="facebook.User" %>
<%@ page import="facebook.Group" %>


<%
  User curUser = (User) session.getAttribute("user");
  Group groupToAdd = (Group) session.getAttribute("group");

  curUser.addGroup(groupToAdd);
  groupToAdd.addMember(curUser);
%>

<jsp:forward page="group.jsp" />
