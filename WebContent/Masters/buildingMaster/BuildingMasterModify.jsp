<%@page import="java.sql.*,vdb.Db"%>
<html>
<head>
<script language="javascript">
function val()
{
var block=document.getElementById("block_num").value;
if(block=="")
{
alert("enter the block number properly")
document.buildingmaster.block_num.focus();
return false;
}
var room=document.getElementById("room_num").value;
if(room=="")
{
alert("enter the room number correctly");
document.buildingmaster.room_num.focus();
return false;
}
var branch=document.getElementById("branch").value;
if(branch==0)
{
alert("enter your branch correctly");
document.buildingmaster.branch.focus();
return false;
}
var sem=document.getElementById("sem").value;
if(sem==0)
{
alert("enter your sem correctly");
document.buildingmaster.sem.focus();
return false;
}
}
function dis()
{
document.getElementById("branch").disabled=true;
document.getElementById("sem").disabled=true;
document.getElementById("course").disabled=true;
}
function ena()
{
if(document.getElementById("alloted").checked)
{
document.getElementById("branch").disabled=false;
document.getElementById("sem").disabled=false;
document.getElementById("course").disabled=false;

}
if(!(document.getElementById("alloted").checked))
{
document.getElementById("branch").disabled=true;
document.getElementById("sem").disabled=true;
document.getElementById("course").disabled=true;
}
}

</script>
</head>
<body bgcolor="skyblue" onload="dis()">
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

<form name="buildingmaster" action="./BuildingMasteModifyData.jsp" >
<fieldset>
<legend><b>Enter the room details of the following building</b></legend>
<table align="center" cellpadding="15">
<tr>
 	<td><b>Block No:</b><br><input type="text" id="block_num" name="block_num"></td>
	<td><b>Room No:</b><br><input type="text" id="room_num" name="room_num"></td>
        <td><input type="checkbox" id="alloted" name="alloted" onclick="ena()"> &nbsp;&nbsp; <b>Alloted</b></td> 
	<td><b>Branch:</b><br><select id="branch" name="branch">
			<option id="select" value="0">select</option>
			<option id="ECE" value="ECE">ECE</option>
			<option id="CSE" value="CSE">CSE</option>
			<option id="EEE" value="EEE">EEE</option>
			<option id="IT" value="IT">IT</option>
			<option id="MCA" value="MCA">MCA</option>
			<option id="MBA" value="MBA">MBA</option>
			</select>
	</td>
	<td><b>Course:</b><br><select id="course" name="course">
			<option id="select" value="0">select</option>
			<option id="B.Tech" value="B.Tech">B.tech</option>
			<option id="M.Tech" value="M.tech">M.tech</option>
			</select>
	</td>
	
	<td><b>Semester:</b><br><select id="sem" name="sem">
			<option id="select" value="0">select</option>
            <option id="1" value="1">1</option>
            <option id="2" value="2">2</option>
            <option id="3" value="3">3</option>
            <option id="4" value="4">4</option>
            <option id="5" value="5">5</option>
            <option id="6" value="6">6</option>
            <option id="7" value="7">7</option>
            <option id="8" value="8">8</option>
             			
			</select>
	</td>
</tr>
</table>
<table width="100%">
<tr>
<th width="30%"><input type="submit" value="New/Modify"></th>
<th width="30%"><input type="reset" value="   Cancel   "></th>
<th width="30%"><input type="button" value="   Quit   " onclick="window.close()"></th>
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
	pst=con.prepareStatement("select * from building_tab");
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

</form>
</body>
</html>