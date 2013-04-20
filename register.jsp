<jsp:include page = "menu.jsp" />

<html>
<body>

<br/>

<h1>Register</h1>


<form action= "registerController.jsp" method=GET>

Name: <input type=text size=20 name=name />
<br/>
Email: <input type=text size=20 name=email />
<br/>
Password: <input type=password size=20 name=password />
<br/>
Re-Enter Password: <input type=password size=20 name=password2 />
<br/>
<input type=submit value="Register" />
</form>

</body>
</html>

