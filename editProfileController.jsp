<%@ page import="facebook.Repository" %>
<%@ page import="facebook.User" %>
<%@ page import="java.util.ArrayList" %>


<%
  User curUser = (User) session.getAttribute("user");
  String name = curUser.getUserName();
  if (name.equals(null) || name == "") {
    name = name;
  } else {
    name = request.getParameter("name");
    request.getAttribute(name);
  }
   
%>
    <jsp:forward page="editProfile.jsp" />
<%
  String gender = request.getParameter("gender");
%>
    <jsp:forward page="editProfile.jsp" />
<%
  
%>
