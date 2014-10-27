<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<%@page import="java.sql.*"%>
<%@page import="mis.*"%>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
<script src="script.js" type="text/javascript"></script>
</head>
<body bgcolor="skyblue">
<h1 align="center">Discount students list</h1>
<form name="discount">
<center>
<table summary="">
<tr>
<td>
<fieldset>
<input type="checkbox" name="all" id="all" value="all"  onclick="toggleDisplay()">All concessions

<div id="some">
&nbsp;Fee name:<select name="fname" id="flist" onchange="changeFee()">
<option value="Select">Select
    <%
Dbcon d=new Dbcon();
Connection con= d.getConnection();
Statement st1=con.createStatement();
ResultSet rs=st1.executeQuery("select fee_name from feemaster_tab");
while(rs.next()){%>
				<option value=<%=rs.getString(1) %>><%=rs.getString(1) %></option>
    <%} %>
   </select>
   <input type="checkbox" name="flist" id="showdlist" onclick="showdiscount()">Filter list
</div>
<div id="dlistlayer" style="visibility: hidden;" >
<select name="dlist" id="dlist" onchange="changeDiscount()" >
<option value="Select">Select</option>
<option value="Concession">Concession</option>
<option value="Merit">Merit</option>
<option value="Discount">Discount</option>
<option value="Others">Others</option>

   </select>
</div>
   </fieldset>
   </td>
   <td>
   <fieldset>
   
   <input name="view" type="button" value="&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;view&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;" size="20" onclick="getDetails()"/>
    <input name="print" type="button" value="&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;print&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;"  size="20" onclick="window.print('fillTable')"/>
        <input name="quit" type="button" value="&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;quit&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;" size="20" onclick="window.close()"/>
 </fieldset>
 </td>
  </tr>
</table>
<span id="fillTable"></span>
</center>
</form>
</body>
</html>