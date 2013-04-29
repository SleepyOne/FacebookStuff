
<%@ page import="facebook.User" %>
<%@ page import="java.util.ArrayList" %>


<%
  User curUser = session.getParameter("user");

  // Need to do a User friend to add = session.getParameter()
  // But what parameter would I get?
