<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Strict//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-strict.dtd">
<!--
Design by Free CSS Templates
http://www.freecsstemplates.org
Released for free under a Creative Commons Attribution 2.5 License

Name       : Refillable  
Description: A two-column, fixed-width design with dark color scheme.
Version    : 1.0
Released   : 20120325

-->
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta name="keywords" content="" />
<meta name="description" content="" />
<meta http-equiv="content-type" content="text/html; charset=utf-8" />
<title>Stalkbook</title>
<link href="style.css" rel="stylesheet" type="text/css" media="screen" />
<script type="text/javascript" src="jquery/jquery-1.4.2.min.js"></script>
<script type="text/javascript" src="jquery/jquery.gallerax-0.2.js"></script>
<style type="text/css">
@import "gallery.css";
</style>
</head>
<body>
<div id="wrapper">
	<div id="header">
		<div id="logo">
			<h1><a href="home.jsp">Stalkbook</a></h1>
			
		</div>
	</div>
	<!-- end #header -->
	<div id="menu">
		<ul>
			<li><a href="login.jsp">Logout</a></li>
			<li><a href="friendRequests.jsp">Friend Requests</a></li>
			<li><a href="editProfile.jsp">Edit Profile</a></li>
            <li><a href="profile.jsp">Profile</a></li>
			<li class="current_page_item"><a href="home.jsp">Home</a></li>
		</ul>
	</div>
	<!-- end #menu -->
	
	<div id="page">
		<div id="page-bgtop">
			<div id="page-bgbtm">
				<div id="content">
					<div id="gallery-wrapper">
						<h1>Create Event</h1>

							<form action="eventController.jsp" method=GET>

								<br/>
								Event Name: <input type=text size=40 name=name />
								<br/>
								<br/>
								Description: <input type=text size=90 name=description />
								<br/>
								<br/>
								Date: <select name=month>
								  <option value=January>January </option>
								  <option value=February>February </option>
								  <option value=March>March </option>
								  <option value=April>April </option>
								  <option value=May>May </option>
								  <option value=June>June </option>
								  <option value=July>July </option>
								  <option value=August>August </option>
								  <option value=September>September </option>
								  <option value=October>October </option>
								  <option value=November>November </option>
								  <option value=December>December </option>
								</select>

								<select name=day>
								  <option value=1>1 </option>
								  <option value=2>2 </option>
								  <option value=3>3 </option>
								  <option value=4>4 </option>
								  <option value=5>5 </option>
								  <option value=6>6 </option>
								  <option value=7>7 </option>
								  <option value=8>8 </option>
								  <option value=9>9 </option>
								  <option value=10>10 </option>
								  <option value=11>11 </option>
								  <option value=12>12 </option>
								  <option value=13>13 </option>
								  <option value=14>14 </option>
								  <option value=15>15 </option>
								  <option value=16>16 </option>
								  <option value=17>17 </option>
								  <option value=18>18</option>
								  <option value=19>19 </option>
								  <option value=20>20 </option>
								  <option value=21>21 </option>
								  <option value=22>22 </option>
								  <option value=23>23 </option>
								  <option value=24>24 </option>
								  <option value=25>25 </option>
								  <option value=26>26 </option>
								  <option value=27>27 </option>
								  <option value=28>28 </option>
								  <option value=29>29 </option>
								  <option value=30>30 </option>
								  <option value=31>31 </option>
								</select>

								<br/>
								<br/>
								Time: <select name=hour>
								  <option value=1>1 </option>
								  <option value=2>2 </option>
								  <option value=3>3 </option>
								  <option value=4>4 </option>
								  <option value=5>5 </option>
								  <option value=6>6 </option>
								  <option value=7>7 </option>
								  <option value=8>8 </option>
								  <option value=9>9 </option>
								  <option value=10>10 </option>
								  <option value=11>11 </option>
								  <option value=12>12 </option>
								</select>

								<select name=timeOfDay>
								  <option value=am>am </option>
								  <option value=pm>pm </option>
								</select>

								<br/>
								<br/>

								<input type="submit" id="search-submit" value="Submit" />

								</form>
								</center>

								<br/>
								<br/>
				
				</div>
				<!-- end #sidebar -->
				<div style="clear: both;">&nbsp;</div>
				<div id="sidebar">
					<ul>
						<li>
							<div id="search" >
								<form method="get" action="searchNames.jsp">
									<div>
										<input type="text" name="s" id="search-text" value="" />
										<input type="submit" id="search-submit" value="Search" />
									</div>
								</form>
							</div>
							<div style="clear: both;">&nbsp;</div>
						</li>
						<!--<li>
							<h2>Aliquam tempus</h2>
							<p>Mauris vitae nisl nec metus placerat perdiet est. Phasellus dapibus semper consectetuer hendrerit.</p>
						</li>-->
						<li>
							<h2>Doin' Stuff Over Here, Motherf***er</h2>
							<ul>
								<li><a href="createGroup.jsp">Create Group</a></li>
							</ul>
						</li>
					</ul>
			</div>
		</div>
	</div>
	<!-- end #page -->
</div>
<!--<div id="footer">
	<p>Copyright (c) 2012 Sitename.com. All rights reserved. Design by <a href="http://www.freecsstemplates.org">FCT</a>.</p>
</div>
<!-- end #footer -->
<%
  String error = (String) session.getAttribute("error");

  if (error != null)
  {
    out.println("<center>" + error + "</center>");
  }

  session.removeAttribute("error");
%>

</body>
</html>
