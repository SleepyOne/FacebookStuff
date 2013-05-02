
<%@ page import="facebook.User" %>


<%
  session.removeAttribute("user");
%>

<jsp:forward page="login.jsp" />
