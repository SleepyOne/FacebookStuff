
<%@ page import="facebook.Group" %>
<%@ page import="facebook.Repository" %>


<%
  String name = request.getParameter("name");

  Group groupToView = Repository.instance().getGroup(name);

  session.setAttribute("group", groupToView);
%>

<jsp:forward page="group.jsp" />
