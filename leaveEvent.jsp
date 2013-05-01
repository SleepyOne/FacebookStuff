
<%@ page import="facebook.User" %>
<%@ page import="facebook.Event" %>


<%
  User curUser = (User) session.getAttribute("user");
  Event eventToRemove = (Event) session.getAttribute("event");

  curUser.removeEvent(eventToRemove);
  eventToRemove.removeGuest(curUser);
%>

<jsp:forward page="event.jsp" />
