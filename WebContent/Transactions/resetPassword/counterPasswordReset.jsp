<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
<script src="script.js " type="text/javascript"></script>
</head>
<body bgcolor="skyblue">
<form action="Check.jsp" onsubmit="return check()">
<center>
<table>
<tr><td>Incharge name:</td><td> <input type="text" name="incharge_name" id="incharge_name" onblur="checkincharge()"></td></tr>
<tr><td>Old password:</td><td> <input type="password" name="old"></td></tr>

<tr> <td>New Password:</td> <td> <input type="password" name="new" id="new" ></td> </tr>
<tr> <td>Retype Password:</td><td> <input type="password" id="newagain" name="newagain" onblur="checkPwds()"></td></tr>
<tr><td><input type="submit" value="update"></td>
<td><input type="button" value="Cancel" onclick="javascript:history.go(-1)"></td></tr>
</table>
</center>
</form>
</body>
</html>