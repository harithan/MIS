<%@ page import="java.sql.*" %>

<%
try {
String rollno=request.getParameter("rollno");

System.out.println(rollno);
Connection con=vdb.Db.connect();
PreparedStatement pst=con.prepareStatement("select * from tc_issued_tab where roll_num=?");
System.out.println("123");
pst.setString(1,rollno);
System.out.println("1234");
ResultSet rs=pst.executeQuery();
System.out.println("123445");
if(rs.next())
{
	System.out.println("1234456");
	pst.close();
out.print("<h2>TC Already Issued For this Candidate use the Serial to print a duplicate copy</h2>");
}
else
{
	System.out.println("1234457");
	PreparedStatement pst1=con.prepareStatement("select count(*) from tc_issued_tab");
	
	System.out.println("123445");
	ResultSet rs1=pst1.executeQuery();
	System.out.println("123445");
	if(rs1.next())
	{
		System.out.println("123445");
		int c=rs1.getInt(1);
		c++;
		System.out.println(String.valueOf(c));
		System.out.println("123445");
		request.setAttribute("serial",String.valueOf(c));
		System.out.println("123445");
		PreparedStatement pst2=con.prepareStatement("insert into tc_issued_tab values(?,?)");
		pst2.setInt(1,c);
		pst2.setString(2,rollno);
		pst2.executeUpdate();
		System.out.print("A log of the unique Serial number for the TC has been created");
		RequestDispatcher rd=request.getRequestDispatcher("./tc1.jsp");
		rd.forward(request,response);
	}
	
}
}
catch(Exception e) {
	System.out.println("error");
}
%>

