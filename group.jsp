<%@ page import="facebook.Group" %>

<%
  Group curGroup = (Group) session.getAttribute("group");
  if (curGroup != null)
  {
%>
    <jsp:include page="menu2.jsp" />
<%
  }
  else
  {
%>
    <jsp:forward page="home.jsp" />
<%
  }
%>

<html>
<body>

<br/>
<br/>

<center>
<%
  out.println("<h1>" + curGroup.getName() "</h1>");




%>

</body>
</html>




