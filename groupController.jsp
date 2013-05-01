<%@ page import="facebook.Group" %>
<%@ page import="facebook.Repository" %>


<%
  String name = request.getParameter("name");
  if (name == null || name == "")
  {
    session.setAttribute("error", "Please fill in all text fields.");
%>
    <jsp:forward page="createGroup.jsp" />
<%
  }
  String description = request.getParameter("description");
  if (description == null || description == "")
  {
    session.setAttribute("error", "Please fill in all text fields.");
%>
    <jsp:forward page="createGroup.jsp" />
<%
  }
  Group group = Repository.instance().getGroup(name);

  if (group == null)
  {
    Repository.instance().createNewGroup(name, description);
    session.setAttribute("group", Repository.instance().getGroup(name));

    session.getAttribute("user");
    
  }
  else
  {
    session.setAttribute("error", "That group already exists. Please choose a different name.");
%>
    <jsp:forward page="createGroup.jsp" />
<%
  }
%>

  <jsp:forward page="group.jsp" />



