
<%@ page import="facebook.User" %>
<%@ page import="java.util.ArrayList" %>


<%
  User curUser = (User) session.getAttribute("user");

  // Need to figure out what user I'm removing from the curUser's list
  // When you go to someone's profile, set a session attribute for "beingViewed"

%>
