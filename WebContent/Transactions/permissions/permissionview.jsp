<html>
<head>
<script language="javascript">
function ret()
{
window.navigate("permission.jsp");
}
</script>
</head>
<body bgcolor="skyblue">
<br>
<h3>Permission Details to <%=session.getAttribute("roll") %></h3>
<fieldset><legend>Permission Details</legend>
<table align="center" border="2">
<tr><th bgcolor="pink">Rollno:</th><td><%=session.getAttribute("roll") %></td></tr>
<tr><th bgcolor="pink">Permission For:</th><td><%=session.getAttribute("per") %></td></tr>
<tr><th bgcolor="pink">TargerDate:</th><td><%=session.getAttribute("date") %></td></tr>
<tr><th bgcolor="pink">Ammount To Be Paid :</th><td><%=session.getAttribute("amo") %></td></tr>
<tr><th bgcolor="pink">No of Installments:</th><td><%=session.getAttribute("ins") %></td></tr>
<tr><th bgcolor="pink">Permission Given By:</th><td><%=session.getAttribute("per1") %></td></tr>
</table>
</fieldset>
<br>
<center>
<input type="button" value="OK" onclick="ret()">
</center>
</body>
</html>