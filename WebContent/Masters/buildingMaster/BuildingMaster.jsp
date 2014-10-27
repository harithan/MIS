<%@page import="java.sql.*,vdb.Db" %>
<html>
<head>
<script language="javascript">
function call()
{
var res=document.getElementById("block_num").value;
Window.navigate("BuildingMaster.jsp?block_num="+res);
}
</script>
</head>
<body bgcolor="skyblue">
<form name="buildingmaster" onsubmit="call()">
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
<fieldset>
<legend><b>Enter the room details of the following building</b></legend>
<table align="center" cellpadding="15" width="100%">
<tr>
 	<td align="center">&nbsp;&nbsp;<b>Block No:</b><br><input type="text" id="block_num" name="block_num"></td>
</tr>	
<tr>
<th width="50%"><input type="submit" value="    View    "/></th>
<th width="50%"><input name="quit" value="    Quit      " type="button"  onclick="window.close()"/>
</th>
</tr>
</table>

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
	String block_num=request.getParameter("block_num");
	if(block_num==null){
	pst=con.prepareStatement("select * from building_tab order by block_name");
	rs=pst.executeQuery();
	while(rs.next()){
		%>
		<tr><td><%=rs.getString(2) %></td><td><%=rs.getString(1) %></td>
		<td><%=rs.getString(5) %></td><td><%=rs.getString(3) %></td>
		<td><%=rs.getString(4) %></td></tr>
		<%	}
		pst.close();
		con.close();
	}else{
		pst=con.prepareStatement("select * from building_tab where block_name=? order by block_name");
		pst.setString(1,block_num);
		rs=pst.executeQuery();
		while(rs.next()) {
			%>
			<tr><td><%=rs.getString(2) %></td><td><%=rs.getString(1) %></td>
			<td><%=rs.getString(5) %></td><td><%=rs.getString(3) %></td>
			<td><%=rs.getString(4) %></td></tr>
			<%	}}
			pst.close();
			con.close();
			 %>
</table>
</fieldset>
<br><br>

</form>
</body>
</html>