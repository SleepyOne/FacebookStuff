<jsp:include page="menu2.jsp" />

<html>
<body>

<br/>

<center>

<h1>Create Event</h1>

<form action="eventController.jsp" method=GET>

<br/>
Event Name: <input type=text size=40 name=name />
<br/>
<br/>
Description: <input type=text size=150 name=description />
<br/>
<br/>
Date: <select name=month>
  <option value=Jan>January </option>
  <option value=Feb>February </option>
  <option value=Mar>March </option>
  <option value=Apr>April </option>
  <option value=May>May </option>
  <option value=Jun>June </option>
  <option value=Jul>July </option>
  <option value=Aug>August </option>
  <option value=Sep>September </option>
  <option value=Oct>October </option>
  <option value=Nov>November </option>
  <option value=Dec>December </option>
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

<input type=submit value="Submit" />

</form>
</center>
</body>
</html>


