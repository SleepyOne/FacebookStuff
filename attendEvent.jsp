
<%@ page import="facebook.User" %>
<%@ page import="facebook.Event" %>


<%
  User curUser = (User) session.getAttribute("user");
  Event eventToAdd = (Event) session.getAttribute("event");

  curUser.addEvent(eventToAdd);
  eventToAdd.addGuest(curUser);
%>

<jsp:forward page="event.jsp" />
