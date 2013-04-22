<%@ page import="facebook.Repository" %>
<%@ page import="facebook.User" %>


<%
  String email = request.getParameter("email");
  String password = request.getParameter("password");

  User user = Repository.instance().getUser(email);

  if (user == null)
  {
    out.println("<br/><br/><center>" + "Invalid email or password! <br/><br/>" + "<a href='http://rosemary.umw.edu:54020/hw7/login.jsp'>Login</a></center>" );
  }
  else
  {
    String otherPassword = user.getPassword();
    if (otherPassword.equals(password))
    {
      session.setAttribute("user", Repository.instance().getUser(email));
%>

      <jsp:forward page="home.jsp" />

<%  }
    else
    {
    out.println("<br/><br/><center>" + "Invalid email or password! <br/><br/>" + "<a href='http://rosemary.umw.edu:54020/hw7/login.jsp'>Login</a></center>" );

    }
  }
%>


