<%@ page import="facebook.Group" %>
<%@ page import="facebook.Repository" %>


<%
  String name = request.getParameter("name");
  String description = request.getParameter("description");

  Group group = Repository.instance().getGroup(name);

  if (group == null)
  {
    Repository.instance().createNewGroup(name, description);
    session.setAttribute("group", Repository.instance().getGroup(name));
  }
  else
  {
    // print error message
  }
%>

  <jsp:forward page="group.jsp" />
