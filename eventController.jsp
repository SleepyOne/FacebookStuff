<%@ page import="facebook.Repository" %>
<%@ page import="facebook.Event" %>


<%
  String name = request.getParameter(name);
  String month = request.getParameter(month);
  String day = request.getParameter(day);
  String hour = request.getParameter(time);
  String timeOfDay = request.getParameter(timeOfDay);
  String description = request.getParameter(description);

  String date = month.concat(" ");
  date = date.concat(day);

  String time = hour.concat(" ");
  time = time.concat(timeOfDay);

  int ID = Repository.instance().getNumEvents() + 1;

  Repository.instance().createNewEvent(name, date, time, description, ID);
  session.setAttribute("event", Repository.instance().getEvent(ID));
%>

  <jsp:forward page="event.jsp" />
