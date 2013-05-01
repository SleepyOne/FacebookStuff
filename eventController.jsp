<%@ page import="facebook.Repository" %>
<%@ page import="facebook.Event" %>


<%

  String name = request.getParameter("name");
  if (name == null || name == "")
  {
    session.setAttribute("error", "Please fill in all text fields.");
%>
    <jsp:forward page="createEvent.jsp" />
<%
  }
  String description = request.getParameter("description");
  if (description == null || description == "")
  {
    session.setAttribute("error", "Please fill in all text fields.");
%>
    <jsp:forward page="createEvent.jsp" />
<%
  }
  String month = request.getParameter("month");
  String day = request.getParameter("day");
  String hour = request.getParameter("hour");
  String timeOfDay = request.getParameter("timeOfDay");


  String date = month.concat(" ");
  date = date.concat(day);

  String time = hour.concat(" ");
  time = time.concat(timeOfDay);
    

  int ident = Repository.instance().getNumEvents() + 1;

  String ID = Integer.toString(ident);

  Repository.instance().createNewEvent(name, date, time, description, ID);
  session.setAttribute("event", Repository.instance().getEvent(ID));
%>

  <jsp:forward page="event.jsp" />
