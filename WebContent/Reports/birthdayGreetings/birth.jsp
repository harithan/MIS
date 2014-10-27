<%@ page import="java.sql.*" %>
<html>
<body background="hb.jpg">
<br/>
<br/>
<br/>
<br/>
<br/>
<br/>
<br/>
<br/>

<table align="center">
<tr><th><h2>Name</h2></th><th><h2>Rollno</h2></th></tr>
<%

try {
String bd=request.getParameter("d");



Connection con=vdb.Db.connect();
PreparedStatement pst=con.prepareStatement("select roll_num from student_personal_details_tab where dob like '"+bd+"%'");
PreparedStatement pst1=con.prepareStatement("select student_name from student_tab where roll_num=?");


ResultSet rs=pst.executeQuery();

while(rs.next())
{
	String id=rs.getString(1);
	pst1.setString(1,id);
	ResultSet rs2=pst1.executeQuery();
	if(rs2.next())
	{
		String name=rs2.getString(1);
		
		%>
		<tr><td align="center"><h3><%=name%></h3></td><td align="center"><h3><%=id%></h3></td></tr>
		<%
		
	}
}

}
catch(Exception e) {
	System.out.println("error");
}

%>
</table>
</body>
</html>
