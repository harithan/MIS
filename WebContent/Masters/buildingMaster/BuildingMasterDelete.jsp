<%@page import="java.sql.*,vdb.Db" %>
<html>
<body bgcolor="skyblue">
<center><h2>Building Details</h2></center>
<%!String a[]=new String[5];
int i=0;
Connection con = null;
PreparedStatement pst=null;
ResultSet rs=null;
 %>
<%
try{
    con=Db.connect(); 
}
catch(Exception e){}
 %>
 <form name="buildingmaster" Action="./BuildingMasterDeleteData.jsp">
<fieldset>
<legend><b>Enter the room details of the following building</b></legend>
<table align="center" cellpadding="15">
<tr>
 	<td><b>Block No:</b><br><input type="text" id="block_num" name="block_num"></td>
	<td><b>Room No:</b><br><input type="text" id="room_num" name="room_num"></td>
        </tr>
</table>

</fieldset>
<br>
<br>
<table align="center" border="1"  width="90%">
<tr>
	<th>Block Number</th>
	<th>Room Number</th>
	<th>Alloted</th>
	<th>Branch</th>
	<th>Semester</th>
	</tr>
	<%
	pst=con.prepareStatement("select * from building_tab order by block_name");
	rs=pst.executeQuery();
	while(rs.next()) {
		%>
		<tr><td><%=rs.getString(2) %></td><td><%=rs.getString(1) %></td>
		<td><%=rs.getString(5) %></td><td><%=rs.getString(3) %></td>
		<td><%=rs.getString(4) %></td></tr>
		<%	}
		pst.close();
		con.close();
		 %>
</table><br><br>
<table width="100%">
<tr>
<th width="30%"><input type="submit" value="Delete"></th>
<th width="30%"><input type="reset" value=" Cancel "></th>
<th width="30%"><input type="button" value="   Quit   " onclick="window.close()"></th>
</tr>
</table>
<center>&nbsp;&nbsp;&nbsp;&nbsp;</center>
</form>
</body>
</html>