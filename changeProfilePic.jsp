
<%@ page import="com.oreilly.servlet.MultipartRequest" %>
<%@ page import="facebook.User" %>
<%@ page import="facebook.Profile" %>

<%
  MultipartRequest mpr = new MultipartRequest(request,
    "/home/hwilsey/tomcat/webapps/hw7/facebookFiles/profilePics");

  User curUser = (User) session.getAttribute("user");

  String picName = mpr.getOriginalFileName("picture");

  curUser.getProfile().setPicture("profilePics/" + picName);
%>

<jsp:forward page="profile.jsp" />
