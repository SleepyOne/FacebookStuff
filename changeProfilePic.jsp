<%@ page import="facebook.User" %>
<%@ page import="facebook.Profile" %>

<%
  User curUser = session.getAttribute("user");

  String picName = request.getOriginalFileName("picture");

  curUser.getProfile().setPicture(picName);
%>

<jsp:forward page="profile.jsp" />
