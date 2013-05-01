
<%@ page import="facebook.Group" %>
<%@ page import="facebook.Repository" %>


<%
  String name = request.getParameter("name");

  Group groupToView = Repository.instance().getGroup(name);

  session.setAttribute("curGroup", groupToView);
%>

<jsp:forward page="group.jsp" />
