<%@ page import="facebook.User" %>


<%
  User curUser = (User) session.getAttribute("user");
  if (curUser != null)
  {
%>
    <jsp:include page="menu2.jsp" />
<%
  }
  else
  {
%>
    <jsp:forward page="login.jsp" />
<%
  }
%>

<html>
<body>

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
					<center>
					<h1>Edit Profile</h1>

						<br/>
						<br/>
						<br/>

						<%
						  out.println("Current Name: " + curUser.getUserName());
						%>
						<br/>
						<br/>
						<form action="editProfileController.jsp" method=get>

						  <input type=text size=25 name=name />
						  <br/>
						  <br/>
						  <br/>
						  <br/>
						  <input type=radio name=gender value=Male />Male
						  <input type=radio name=gender value=Female />Female
						  <br/>
						  <br/>
						  <br/>
						  <br/>
						  <select name=month>
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

						<select name=year>
						  <option value=2000>2000 </option>
						  <option value=1999>1999 </option>
						  <option value=1998>1998 </option>
						  <option value=1997>1997 </option>
						  <option value=1996>1996 </option>
						  <option value=1995>1995 </option>
						  <option value=1994>1994 </option>
						  <option value=1993>1993 </option>
						  <option value=1992>1992 </option>
						  <option value=1991>1991 </option>
						  <option value=1990>1990 </option>
						  <option value=1989>1989 </option>
						  <option value=1988>1988 </option>
						  <option value=1987>1987 </option>
						  <option value=1986>1986 </option>
						  <option value=1985>1985 </option>
						  <option value=1984>1984 </option>
						  <option value=1983>1983 </option>
						  <option value=1982>1982 </option>
						  <option value=1981>1981 </option>
						  <option value=1980>1980 </option>
						  <option value=1979>1979 </option>
						  <option value=1978>1978 </option>
						  <option value=1977>1977 </option>
						  <option value=1976>1976 </option>
						  <option value=1975>1975 </option>
						  <option value=1974>1974 </option>
						  <option value=1973>1973 </option>
						  <option value=1972>1972 </option>
						  <option value=1971>1971 </option>
						  <option value=1970>1970 </option>
						  <option value=1969>1969 </option>
						  <option value=1968>1968 </option>
						  <option value=1967>1967 </option>
						  <option value=1966>1966 </option>
						  <option value=1965>1965 </option>
						  <option value=1964>1964 </option>
						  <option value=1963>1963 </option>
						  <option value=1962>1962 </option>
						  <option value=1961>1961 </option>
						  <option value=1960>1960 </option>
						  <option value=1959>1959 </option>
						  <option value=1958>1958 </option>
						  <option value=1957>1957 </option>
						  <option value=1956>1956 </option>
						  <option value=1955>1955 </option>
						  <option value=1954>1954 </option>
						  <option value=1953>1953 </option>
						  <option value=1952>1952 </option>
						  <option value=1951>1951 </option>
						  <option value=1950>1950 </option>
						  <option value=1949>1949 </option>
						  <option value=1948>1948 </option>
						  <option value=1947>1947 </option>
						  <option value=1946>1946 </option>
						  <option value=1945>1945 </option>
						  <option value=1944>1944 </option>
						  <option value=1943>1943 </option>
						  <option value=1942>1942 </option>
						  <option value=1941>1941 </option>
						  <option value=1940>1940 </option>
						  <option value=1939>1939 </option>
						  <option value=1938>1938 </option>
						  <option value=1937>1937 </option>
						  <option value=1936>1936 </option>
						  <option value=1935>1935 </option>
						  <option value=1934>1934 </option>
						  <option value=1933>1933 </option>
						  <option value=1932>1932 </option>
						  <option value=1931>1931 </option>
						  <option value=1930>1930 </option>
						  <option value=1929>1929 </option>
						  <option value=1928>1928 </option>
						  <option value=1927>1927 </option>
						  <option value=1926>1926 </option>
						  <option value=1925>1925 </option>
						  <option value=1924>1924 </option>
						  <option value=1923>1923 </option>
						  <option value=1922>1922 </option>
						  <option value=1921>1921 </option>
						  <option value=1920>1920 </option>
						</select>
						<br/>
						<br/>

						<input type="submit" id="search-submit" value="Submit" />

						</center>
						</form>
				</div>
				<!-- end #sidebar -->
				<div style="clear: both;">&nbsp;</div>
			</div>
		</div>
	</div>
	<!-- end #page -->
</div>
<!--<div id="footer">
	<p>Copyright (c) 2012 Sitename.com. All rights reserved. Design by <a href="http://www.freecsstemplates.org">FCT</a>.</p>
</div>
<!-- end #footer -->



</body>
</html>





