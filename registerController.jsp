<%@ page import="facebook.User" %>
<%@ page import="facebook.Repository" %>


<%
  String email = request.getParameter("email");
  String name = request.getParameter("name");
  String password = request.getParameter("password");
  String password2 = request.getParameter("password2");
  String gender = request.getParameter("gender");
  String day = request.getParameter("day");
  String year = request.getParameter("year");
  String month = request.getParameter("month");


  String birthday = month.concat(" ");
  birthday = birthday.concat(day);
  birthday = birthday.concat(", ");
  birthday = birthday.concat(year);

  User user = Repository.instance().getUser(email);

  if (user == null)
  {
    if (email.contains("@") && email.indexOf("@") > 0 && email.indexOf(".") > email.indexOf("@") + 1 && email.lastIndexOf(".") + 2 < email.length() - 1)
    {
      if (password.equals(password2))
      {
        Repository.instance().createNewUser(name, email, password, birthday, gender);
        session.setAttribute("user", Repository.instance().getUser(email));
%>
        <jsp:forward page="home.jsp" />
<%
      }
      else
      {
        out.println("<br/><br/><center>" + "Your passwords do not match! <br/><br/>" + "<a href='http://rosemary.umw.edu:54020/hw7/register.jsp'>Register</a></center>" );
      }
    }
    else
    {
      out.println("<br/><br/><center>" + "The email address you entered is invalid! <br/><br/>" + "<a href='http://rosemary.umw.edu:54020/hw7/register.jsp'>Register</a></center>" );
    }
  }
  else
  {
    out.println("<br/><br/><center>" + "That email address is already taken! <br/><br/>" + "<a href='http://rosemary.umw.edu:54020/hw7/register.jsp'>Register</a></center>" );
  }
%>

