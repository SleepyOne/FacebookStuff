
<%@ page import="facebook.User" %>
<%@ page import="java.util.ArrayList" %>
<%@ page import="facebook.Profile" %>

<%
  User curUser = (User) session.getAttribute("user");

  String hobby = request.getParameter("hobby");

  curUser.getProfile().addHobby(hobby);
%>

  <jsp:forward page="profile.jsp" />
