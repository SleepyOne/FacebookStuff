
<%@ page import="facebook.Event" %>
<%@ page import="facebook.Repository" %>


<%
  String ID = request.getParameter("ID");

  Event eventToView = Repository.instance().getEvent(ID);

  session.setAttribute("curEvent", eventToView);
%>

<jsp:forward page="event.jsp" />
