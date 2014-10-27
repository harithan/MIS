
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<%
String name=request.getParameter("student");
String roll=request.getParameter("roll");
String from=request.getParameter("from");
String course=request.getParameter("branch");
String to=request.getParameter("to");
String validity=request.getParameter("validity");
String sem=request.getParameter("sem");

%>

<body>
<table border="2" style="border-color:black"><tr><td>
<table>
<tr><td colspan="4"><img src="BUSPASSHEAD.jpg" width="420" height="70"></td></tr>
<tr><td rowspan="7"><img src="test.jpg" width="80" height="100"></td></tr>
<tr><th align="left">Name:</th><td align="left"><%=name%></td></tr>
<tr><th align="left">Course:</th><td align="left"><%=course%></td></tr>
<tr><th align="left">Rollno:</th><td align="left"><%=roll%></td></tr>
<tr><th align="left">S.E.M:</th><td align="left"><%=sem%></td></tr>
<tr><th align="left"> Between:</th><td><%=from%> --- <%=to%></td></tr>
<tr><th align="left">Valid Until:</th><td ><%=validity%></td></tr>




</table>
</td></tr></table>

</body>
</html>
