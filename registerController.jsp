<%@ page import="facebook.User" %>
<%@ page import="facebook.Repository" %>


<%
  String name = request.getParameter("name");
  if (name.equals(null) || name == "")
  {
    session.setAttribute("error", "Please fill in all text fields.");
%>
    <jsp:forward page="register.jsp" />
<%
  }
  String email = request.getParameter("email");
  if (email.equals(null) || email == "")
  {
    name = null;
    session.setAttribute("error", "Please fill in all text fields..");
%>
    <jsp:forward page="register.jsp" />
<%
  }
  String password = request.getParameter("password");
  if (password.equals(null) || password == "")
  {
    name = null;
    email = null;
    session.setAttribute("error", "Please fill in all text fields..");
%>
    <jsp:forward page="register.jsp" />
<%
  }
  String password2 = request.getParameter("password2");
  if (password2.equals(null) || password2 == "")
  {
    name = null;
    email = null;
    password = null;
    session.setAttribute("error", "Please fill in all text fields..");
%>
    <jsp:forward page="register.jsp" />
<%
  }
  String gender = request.getParameter("gender");
  if (gender == null)
  {
    name = null;
    email = null;
    password = null;
    password2 = null;
    session.setAttribute("error", "Please choose your gender.");
%>
    <jsp:forward page="register.jsp" />
<%
  }
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
//        out.println("<br/><br/><center>" + "Your passwords do not match! <br/><br/>" + "<a href='http://rosemary.umw.edu:54020/hw7/register.jsp'>Register</a></center>" );

        session.setAttribute("error", "Your passwords do not match.");
%>
        <jsp:forward page="register.jsp" />
<%
      }
    }
    else
    {
      //out.println("<br/><br/><center>" + "The email address you entered is invalid! <br/><br/>" + "<a href='http://rosemary.umw.edu:54020/hw7/register.jsp'>Register</a></center>" );

      session.setAttribute("error", "Please enter a valid email address.");
%>
      <jsp:forward page="register.jsp" />
<%
    }
  }
  else
  {
    //out.println("<br/><br/><center>" + "That email address is already taken! <br/><br/>" + "<a href='http://rosemary.umw.edu:54020/hw7/register.jsp'>Register</a></center>" );

    session.setAttribute("error", "The email address you entered is already taken.");
%>
    <jsp:forward page="register.jsp" />
<%
  }
%>


