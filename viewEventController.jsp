
<%@ page import="facebook.Event" %>
<%@ page import="facebook.Repository" %>


<%
  String ID = request.getParameter("ID");

  Event eventToView = Repository.instance().getEvent(ID);

  session.setAttribute("event", eventToView);
%>

<jsp:forward page="event.jsp" />
