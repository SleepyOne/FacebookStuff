<jsp:include page="menu2.jsp" />

<html>
<body>

<br/>

<center>

<h1>Create Group</h1>

<br/>
<br/>

<form action="groupController.jsp" method=GET>
  Group name: <input type=text size=40 name=name />
  <br/>
  <br/>
  Description: <input type=text size=150 name=description />
  <br/>
  <br/>
  <input type=submit value="Submit" />
</form>

</center>
</body>
</html>

